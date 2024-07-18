import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:ecommerce_admin/src/shared/domain/models/categories_model.dart';
import 'package:ecommerce_admin/src/shared/domain/models/product_model.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/product/product_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/product/display%20product/widget/category_widget.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/product/add%20product/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CategoryPage extends StatefulWidget {
  final String? title;
  final String? image;
  final String? tag;
  final CategoryModel? categoryModel;

  const CategoryPage(
      {Key? key, this.title, this.image, this.tag, this.categoryModel})
      : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    context.read<ProductBloc>().add(ProductEvent.getProduct(
          AppDevConfig.accessToken,
        ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag!,
              child: Material(
                child: Container(
                  height: 360,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.image!), fit: BoxFit.cover)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1),
                        ])),
                    child: Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        FadeInUp(
                            duration: const Duration(milliseconds: 1200),
                            child: Text(
                              widget.title ?? '',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: BlocConsumer<ProductBloc, ProductState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (success) {
                      if (success == 'Success') {
                        //Navigator.of(context).pop();
                        Fluttertoast.showToast(msg: 'Product Created');
                      } else if (success == 'delete') {
                        Navigator.of(context).pop();
                        Fluttertoast.showToast(msg: 'Product Deleted');
                        context.read<ProductBloc>().add(ProductEvent.getProduct(
                              AppDevConfig.accessToken,
                            ));
                      }
                    },
                    error: (message) {
                      Fluttertoast.showToast(msg: message);
                    },
                  );
                },
                builder: (context, state) {
                  return state.when(
                    initial: () => const CircularProgressIndicator(),
                    loading: () => const CircularProgressIndicator(),
                    success: (success) {
                      if (success is List<ProductModel>) {
                        final list = success
                            .where((product) =>
                                product.categoryId == widget.categoryModel!.id)
                            .toList();
                        return ProductWidget(productList: list);
                      } else {
                        return const ProductWidget();
                      }
                    },
                    error: (message) => const ProductWidget(),
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductAddPageScreen(
              categoryModel: widget.categoryModel!,
            ),
          ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
