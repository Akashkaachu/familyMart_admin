import 'dart:io';

import 'package:ecommerce_admin/src/core/colors.dart/colors.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/bloc/add_picture_bloc.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/bloc/add_picture_event.dart';
import 'package:ecommerce_admin/src/shared/presentation/bloc/bloc/add_picture_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddPictureBloc(),
      child: BlocBuilder<AddPictureBloc, AddPictureState>(
        builder: (context, state) {
          final notifier = context.read<AddPictureBloc>();

          return InkWell(
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
          );
        },
      ),
    );
  }
}
