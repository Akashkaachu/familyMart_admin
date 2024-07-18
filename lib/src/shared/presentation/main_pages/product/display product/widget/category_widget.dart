import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:ecommerce_admin/src/shared/domain/models/product_model.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/product/product_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/home/widget/home_widget.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/product/product%20details/product_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redacted/redacted.dart';

Widget makeProduct({image, title, price, context}) {
  return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                        )),
                    FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: Text(
                          price.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ));
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    this.productList,
  });
  final List<ProductModel>? productList;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: productList != null
          ? List.generate(
              productList!.length,
              (index) => FadeInUp(
                  duration: const Duration(milliseconds: 1500),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                              productModel: productList![index]),
                        ),
                      );
                    },
                    onLongPress: () {
                      showSlidingBox(
                          context: context,
                          box: SlidingBox(
                              maxHeight: size.height * 0.25,
                              color: Colors.white,
                              style: BoxStyle.shadow,
                              draggableIconBackColor: Colors.transparent,
                              body: ProductShowBottomSheet(
                                  context: context,
                                  productModel: productList![index])));
                    },
                    child: makeProduct(
                        context: context,
                        image: 'assets/images/girl.jpeg',
                        title: productList?[index].name,
                        price: productList?[index].price),
                  )),
            )
          : List.generate(
              5,
              (index) => FadeInUp(
                duration: const Duration(milliseconds: 1500),
                child: makeProduct(
                        context: context,
                        image: 'assets/images/girl.jpeg',
                        title: '',
                        price: '')
                    .redacted(
                  context: context,
                  redact: true,
                  configuration: RedactedConfiguration(
                    animationDuration: const Duration(milliseconds: 800),
                  ),
                ),
              ),
            ),
    );
  }
}

Widget ProductShowBottomSheet(
    {required BuildContext context, required ProductModel productModel}) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 1,
          color: Colors.black.withAlpha(30),
        ))),
        child: MaterialListItem(
          image: Image.asset('assets/images/Broto.jpg'),
          title: Text(
            productModel.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialShareIconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 27,
              ),
              text: const Text("Back"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            MaterialShareIconButton(
              icon: const FaIcon(FontAwesomeIcons.penToSquare, size: 27),
              text: const Text("Edit"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            MaterialShareIconButton(
              icon: const FaIcon(CupertinoIcons.trash, size: 27),
              text: const Text("Delete"),
              onPressed: () {
                context.read<ProductBloc>().add(ProductEvent.deleteProduct(
                    AppDevConfig.accessToken, productModel.id!.toString()));
              },
              isDelete: true,
            ),
          ],
        ),
      ),
    ],
  );
}
