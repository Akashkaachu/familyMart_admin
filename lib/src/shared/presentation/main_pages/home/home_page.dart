import 'package:animate_do/animate_do.dart';
import 'package:ecommerce_admin/src/core/colors.dart/colors.dart';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:ecommerce_admin/src/shared/domain/models/categories_model.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/category/category_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/home/widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lottie/lottie.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context
        .read<CategoryBloc>()
        .add(CategoryEvent.getCategory(AppDevConfig.accessToken));
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeInUp(
                  duration: const Duration(milliseconds: 1000),
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/backgroundimage.jpeg'),
                            fit: BoxFit.cover)),
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                            Colors.black.withOpacity(.8),
                            Colors.black.withOpacity(.2),
                          ])),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 1500),
                                      child: const Text(
                                        "Our New Products",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  FadeInUp(
                                      duration:
                                          const Duration(milliseconds: 1700),
                                      child: const Row(
                                        children: <Widget>[
                                          Text(
                                            "VIEW MORE",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(width: 5),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.white,
                                            size: 15,
                                          )
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              FadeInUp(
                  duration: const Duration(milliseconds: 1400),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Categories",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("All")
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocConsumer<CategoryBloc, CategoryState>(
                          listener: (context, state) {
                            state.whenOrNull(success: (success) {
                              if (success == 'Success') {
                                Navigator.of(context).pop();
                                Fluttertoast.showToast(msg: 'Category Created');
                                context.read<CategoryBloc>().add(
                                    CategoryEvent.getCategory(
                                        AppDevConfig.accessToken));
                              }
                            }, error: (message) {
                              print(message);
                              Fluttertoast.showToast(msg: message);
                            });
                          },
                          builder: (context, state) {
                            return state.when(
                                initial: () => categoriesWidget(context),
                                loading: () =>
                                    const CircularProgressIndicator(),
                                success: (success) {
                                  print(success.toString());
                                  return success is List<CategoryModel>
                                      ? categoriesWidget(context, success)
                                      : categoriesWidget(context);
                                },
                                error: (error) => categoriesWidget(context));
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Best Selling by Category",
                              style: TextStyle(
                                  color: kBlack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("All")
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              makeBestCategory(
                                image: 'assets/images/Broto.jpg',
                                title: 'Tech',
                              ),
                              makeBestCategory(
                                  image: 'assets/images/Broto.jpg',
                                  title: 'Watch'),
                              makeBestCategory(
                                  image: 'assets/images/Broto.jpg',
                                  title: 'Perfume'),
                              makeBestCategory(
                                  image: 'assets/images/Broto.jpg',
                                  title: 'Glass'),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            AddCategoryShowDialogBox.show(context, null);
          },
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ));
  }

  SizedBox categoriesWidget(BuildContext context,
      [List<CategoryModel>? categoryList]) {
    return SizedBox(
      height: 150,
      child: categoryList != null
          ? ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  categoryList != null ? categoryList.length : 1, (index) {
                print(categoryList.toString());
                return makeCategory(
                    image: 'assets/images/productimage.jpeg',
                    title: categoryList[index].category,
                    tag: categoryList[index].category,
                    categoryModel: categoryList[index],
                    context: context);
              }),
            )
          : LottieBuilder.asset(
              'assets/animations/Animation - 1719997911149.json'),
    );
  }
}
