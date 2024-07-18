import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_admin/src/core/sized_box.dart/height_width.dart';
import 'package:ecommerce_admin/src/shared/domain/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Material(
            child: Container(
              height: 360,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/girl.jpeg'),
                      fit: BoxFit.cover)),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
                ])),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 40),
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
                          productModel.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ))
                  ],
                ),
              ),
            ),
          ),
          kHeight30,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Category ID : ${productModel.categoryId}',
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                'Product Name : ${productModel.name}',
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                'Price : ${productModel.price}/-',
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                'Product Description : ${productModel.description}',
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                'Stock : ${productModel.stock}',
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              Text(
                'Size : ${productModel.size}',
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              kHeight10,
            ],
          ),
        ],
      ),
    );
  }
}
