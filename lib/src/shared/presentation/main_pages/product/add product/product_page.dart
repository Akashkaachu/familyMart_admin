import 'package:bottom_bar_matu/utils/app_utils.dart';
import 'package:ecommerce_admin/src/core/colors.dart/colors.dart';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:ecommerce_admin/src/shared/domain/models/categories_model.dart';
import 'package:ecommerce_admin/src/shared/domain/models/product_model.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/product/product_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/product/add%20product/product_image_upload_page.dart';
import 'package:ecommerce_admin/src/shared/presentation/simple_page/login/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductAddPageScreen extends StatelessWidget {
  final CategoryModel categoryModel;
  ProductAddPageScreen({super.key, required this.categoryModel});
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController productPriceController = TextEditingController();
  TextEditingController productSizeController = TextEditingController();
  TextEditingController productStockController = TextEditingController();
  final productKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: BlocConsumer<ProductBloc, ProductState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (success) {
              if (success is int) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPictureScreen(
                        productId: success,
                      ),
                    ));
              }
            },
          );
        },
        builder: (context, state) {
          return SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(children: [
              Stack(
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height,
                    child: Image.asset(
                      'assets/images/productimage.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: size.height,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Container(
                          width: (size.width / 2) * 1.8,
                          // height: (size.height / 2) * 1.7,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                Colors.black.withOpacity(.8),
                                Colors.black.withOpacity(.1),
                              ])),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              key: productKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 10),
                                  TextFormFieldWidget(
                                    label: 'Product Name',
                                    labelColor: kWhite,
                                    star: '*',
                                    hintText: 'Add product name',
                                    textStyleColor: kWhite,
                                    controller: productNameController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Text your product';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  const SizedBox(height: 10),
                                  TextFormFieldWidget(
                                    label: 'Description',
                                    labelColor: kWhite,
                                    star: '*',
                                    hintText: 'Add description details',
                                    textStyleColor: kWhite,
                                    maxLines: 4,
                                    controller: productDescriptionController,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Text your description';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  const SizedBox(height: 10),
                                  ////
                                  TextFormFieldWidget(
                                    label: 'Product Price',
                                    labelColor: kWhite,
                                    star: '*',
                                    hintText: 'Add price',
                                    textStyleColor: kWhite,
                                    controller: productPriceController,
                                    keyboardType: TextInputType.number,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Text your price';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  const SizedBox(height: 10),

                                  ///
                                  TextFormFieldWidget(
                                    label: 'Add product size',
                                    labelColor: kWhite,
                                    star: '*',
                                    hintText: 'Add product size',
                                    textStyleColor: kWhite,
                                    controller: productSizeController,
                                    keyboardType: TextInputType.number,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Text your product size';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  const SizedBox(height: 10),
                                  ////
                                  TextFormFieldWidget(
                                    label: 'Add product stock',
                                    labelColor: kWhite,
                                    star: '*',
                                    hintText: 'Add product stock',
                                    textStyleColor: kWhite,
                                    controller: productStockController,
                                    keyboardType: TextInputType.number,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Text your product stock';
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: size.width,
                                    child: ElevatedButton(
                                        onPressed: () async {
                                          if (productKey.currentState!
                                              .validate()) {
                                            final result = ProductModel(
                                                categoryId:
                                                    categoryModel.id.toInt(),
                                                description:
                                                    productDescriptionController
                                                        .text,
                                                name:
                                                    productNameController.text,
                                                price: productPriceController
                                                    .text
                                                    .toDouble(),
                                                size: productSizeController.text
                                                    .toInt(),
                                                stock: productStockController
                                                    .text
                                                    .toInt());
                                            context.read<ProductBloc>().add(
                                                ProductEvent.addProduct(
                                                    AppDevConfig.accessToken,
                                                    result));
                                          }
                                        },
                                        child: const Text(
                                          'ADD',
                                          style: TextStyle(fontSize: 18),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ]),
          );
        },
      )),
    );
  }
}
