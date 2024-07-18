import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'add_picture_event.freezed.dart';

@freezed
class AddPictureEvent with _$AddPictureEvent {
  const factory AddPictureEvent.selectImage() = SelectImage;
  const factory AddPictureEvent.imagePicked(XFile image) = ImagePicked;
}
