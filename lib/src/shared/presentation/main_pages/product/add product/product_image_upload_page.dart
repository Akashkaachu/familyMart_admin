import 'dart:io';

import 'package:ecommerce_admin/src/core/colors.dart/colors.dart';
import 'package:ecommerce_admin/src/core/usecase/signin_refactory.dart';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/bloc/add_picture_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/bloc/add_picture_event.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/bloc/add_picture_state.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/product/product_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/product/add%20product/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPictureScreen extends StatelessWidget {
  const AddPictureScreen({super.key, required this.productId});
  final int productId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: BlocProvider(
            create: (context) => AddPictureBloc(),
            child: BlocBuilder<AddPictureBloc, AddPictureState>(
              builder: (context, state) {
                final notifier = context.read<AddPictureBloc>();

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Add Product Picture",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(height: 102),
                    InkWell(
                      borderRadius: BorderRadius.circular(100.0),
                      onTap: () async {
                        notifier.add(const AddPictureEvent.selectImage());
                      },
                      child: Stack(
                        children: [
                          Ink(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              color: kBlack,
                              border: Border.all(color: kBlack),
                              borderRadius: BorderRadius.circular(1000),
                              image: state.image != null
                                  ? DecorationImage(
                                      image: FileImage(
                                        File(state.image!.path),
                                      ),
                                      fit: BoxFit.cover)
                                  : null,
                              boxShadow: [
                                BoxShadow(
                                  color: kBlack.withOpacity(0.6),
                                  blurRadius: 8,
                                )
                              ],
                            ),
                            child: state.isPickingImage
                                ? const CircularProgressIndicator()
                                : state.image != null
                                    ? null
                                    : const Icon(
                                        Icons.person,
                                        color: kBlack,
                                        size: 100,
                                      ),
                          ),
                          const Positioned(
                              bottom: 10,
                              right: 10,
                              child: CircleAvatar(
                                backgroundColor: kBlack,
                                child: Icon(
                                  Icons.add_circle,
                                  size: 32,
                                  color: kWhite,
                                ),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      "Upload Photo",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Text(
                        "Image that you’re uploading will be showing on product details",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: const Color(0xff888B92)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButtonWidget(
                      backgroundColor: kBlack,
                      textColor: kWhite,
                      fontSize: 14,
                      text: 'UPLOAD',
                      onPressed: () {
                        if (state.image != null) {
                          context.read<ProductBloc>().add(
                              ProductEvent.uploadImage(AppDevConfig.accessToken,
                                  productId, state.image!));
                        }
                      },
                    ),
                    const SizedBox(height: 8),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
