import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'add_picture_event.dart';
import 'add_picture_state.dart';

class AddPictureBloc extends Bloc<AddPictureEvent, AddPictureState> {
  AddPictureBloc() : super(AddPictureState.initial()) {
    on<SelectImage>(_onSelectImage);
    on<ImagePicked>(_onImagePicked);
  }

  final imagePicker = ImagePicker();

  Future<void> _onSelectImage(
      SelectImage event, Emitter<AddPictureState> emit) async {
    try {
      emit(state.copyWith(isPickingImage: true));
      final image = await imagePicker.pickImage(
          source: ImageSource.gallery, imageQuality: 50);
      if (image != null) {
        emit(state.copyWith(image: image, isPickingImage: false));
      }
    } catch (e) {
      emit(state.copyWith(isPickingImage: false));
    }
  }

  Future<void> _onImagePicked(
      ImagePicked event, Emitter<AddPictureState> emit) async {
    emit(state.copyWith(image: event.image, isPickingImage: false));
  }
}
