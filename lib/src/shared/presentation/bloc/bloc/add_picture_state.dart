import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_picture_state.freezed.dart';

@freezed
class AddPictureState with _$AddPictureState {
  const factory AddPictureState({
    required bool isPickingImage,
    XFile? image,
  }) = _AddPictureState;

  factory AddPictureState.initial() => const AddPictureState(
        isPickingImage: false,
      );
}
