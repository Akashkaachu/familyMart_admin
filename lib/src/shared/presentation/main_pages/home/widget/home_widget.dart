import 'package:ecommerce_admin/src/core/colors.dart/colors.dart';
import 'package:ecommerce_admin/src/core/sized_box.dart/height_width.dart';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:ecommerce_admin/src/shared/domain/models/categories_model.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/category/category_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/product/display%20product/category_page.dart';
import 'package:ecommerce_admin/src/shared/presentation/simple_page/login/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sliding_box/flutter_sliding_box.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget makeCategory({
  image,
  title,
  tag,
  CategoryModel? categoryModel,
  context,
}) {
  final size = MediaQuery.of(context).size;
  return AspectRatio(
    aspectRatio: 2 / 2.2,
    child: Hero(
      tag: tag,
      child: GestureDetector(
        onLongPress: () {
          showSlidingBox(
              context: context,
              box: SlidingBox(
                maxHeight: size.height * 0.25,
                color: Colors.white,
                style: BoxStyle.shadow,
                draggableIconBackColor: Colors.transparent,
                body: deleteCategoryShowDialogBox(
                    context: context, categoryModel: categoryModel!),
              ));
        },
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => CategoryPage(
                        image: image,
                        title: title,
                        tag: tag,
                        categoryModel: categoryModel,
                      )));
        },
        child: Material(
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.0),
                  ])),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget makeBestCategory({image, title}) {
  return AspectRatio(
    aspectRatio: 3 / 2.2,
    child: Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.0),
            ])),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )),
      ),
    ),
  );
}

////////////////////////
class AddCategoryShowDialogBox extends StatefulWidget {
  final CategoryModel? categoryModel;
  const AddCategoryShowDialogBox({super.key, required this.categoryModel});
  static show(BuildContext context, CategoryModel? categoryModel) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(
              categoryModel != null ? "Edit Category" : 'Category',
              style: const TextStyle(
                  color: kBlack, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            content: AddCategoryShowDialogBox(
              categoryModel: categoryModel,
            ));
      },
    );
  }

  @override
  State<AddCategoryShowDialogBox> createState() => _AddCategoryWidgetState();
}

TextEditingController categoryAddController = TextEditingController();
final categoryFormKey = GlobalKey<FormState>();

class _AddCategoryWidgetState extends State<AddCategoryShowDialogBox> {
  @override
  void initState() {
    if (widget.categoryModel != null) {
      categoryAddController =
          TextEditingController(text: widget.categoryModel!.category);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Form(
        key: categoryFormKey,
        child: Column(
          children: [
            TextFormFieldWidget(
              label: 'Name of Category',
              labelColor: kBlack,
              controller: categoryAddController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Add your category';
                } else if (value.length < 3) {
                  return 'Category is not valid';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (categoryFormKey.currentState!.validate()) {
                  widget.categoryModel != null
                      ? context.read<CategoryBloc>().add(
                          CategoryEvent.editCategory(
                              newCategoryName: categoryAddController.text,
                              accessToken: AppDevConfig.accessToken,
                              currentCateryName: widget.categoryModel!.category,
                              id: widget.categoryModel!.id.toString()))
                      : context.read<CategoryBloc>().add(
                            CategoryEvent.addCategory(
                                categoryAddController.text,
                                AppDevConfig.accessToken),
                          );
                  categoryAddController.clear();
                }
              },
              child: SizedBox(
                  width: size.width / 2,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Add',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

/////////////////////
Widget deleteCategoryShowDialogBox(
    {required BuildContext context, required CategoryModel categoryModel}) {
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
            categoryModel.category,
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
                AddCategoryShowDialogBox.show(context, categoryModel);
              },
            ),
            MaterialShareIconButton(
              icon: const FaIcon(CupertinoIcons.trash, size: 27),
              text: const Text("Delete"),
              onPressed: () {
                context.read<CategoryBloc>().add(CategoryEvent.deleteCategory(
                    AppDevConfig.accessToken, categoryModel.id.toString()));
              },
              isDelete: true,
            ),
          ],
        ),
      ),
    ],
  );
}

class MaterialShareIconButton extends StatelessWidget {
  final Widget icon;
  final Widget text;
  final VoidCallback onPressed;
  final bool isDelete;
  const MaterialShareIconButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.isDelete = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.only(bottom: 8),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: isDelete ? kRed.withOpacity(0.4) : kWhite,
            borderRadius: const BorderRadius.all(Radius.circular(25)),
          ),
          child: MaterialButton(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            height: 75,
            splashColor: Colors.black.withAlpha(30),
            highlightColor: Colors.black.withAlpha(30),
            onPressed: onPressed,
            child: icon,
          ),
        ),
        text,
      ],
    );
  }
}

class MaterialListItem extends StatelessWidget {
  final Widget title;
  final Widget? description;
  final Widget image;
  final VoidCallback? onPressed;

  const MaterialListItem({
    super.key,
    required this.title,
    this.description,
    required this.image,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(45)),
                ),
                child: image,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 15, top: 0),
                        child: title),
                    Container(
                        margin: const EdgeInsets.only(left: 15, top: 2),
                        child: description),
                  ],
                ),
              ),
            ],
          ),
          kHeight10
        ],
      ),
    );
  }
}
