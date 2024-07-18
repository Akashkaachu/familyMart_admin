// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_picture_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPictureEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectImage,
    required TResult Function(XFile image) imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectImage,
    TResult? Function(XFile image)? imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectImage,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectImage value) selectImage,
    required TResult Function(ImagePicked value) imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectImage value)? selectImage,
    TResult? Function(ImagePicked value)? imagePicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectImage value)? selectImage,
    TResult Function(ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPictureEventCopyWith<$Res> {
  factory $AddPictureEventCopyWith(
          AddPictureEvent value, $Res Function(AddPictureEvent) then) =
      _$AddPictureEventCopyWithImpl<$Res, AddPictureEvent>;
}

/// @nodoc
class _$AddPictureEventCopyWithImpl<$Res, $Val extends AddPictureEvent>
    implements $AddPictureEventCopyWith<$Res> {
  _$AddPictureEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectImageImplCopyWith<$Res> {
  factory _$$SelectImageImplCopyWith(
          _$SelectImageImpl value, $Res Function(_$SelectImageImpl) then) =
      __$$SelectImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectImageImplCopyWithImpl<$Res>
    extends _$AddPictureEventCopyWithImpl<$Res, _$SelectImageImpl>
    implements _$$SelectImageImplCopyWith<$Res> {
  __$$SelectImageImplCopyWithImpl(
      _$SelectImageImpl _value, $Res Function(_$SelectImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectImageImpl implements SelectImage {
  const _$SelectImageImpl();

  @override
  String toString() {
    return 'AddPictureEvent.selectImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectImage,
    required TResult Function(XFile image) imagePicked,
  }) {
    return selectImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectImage,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return selectImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectImage,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectImage value) selectImage,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return selectImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectImage value)? selectImage,
    TResult? Function(ImagePicked value)? imagePicked,
  }) {
    return selectImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectImage value)? selectImage,
    TResult Function(ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage(this);
    }
    return orElse();
  }
}

abstract class SelectImage implements AddPictureEvent {
  const factory SelectImage() = _$SelectImageImpl;
}

/// @nodoc
abstract class _$$ImagePickedImplCopyWith<$Res> {
  factory _$$ImagePickedImplCopyWith(
          _$ImagePickedImpl value, $Res Function(_$ImagePickedImpl) then) =
      __$$ImagePickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile image});
}

/// @nodoc
class __$$ImagePickedImplCopyWithImpl<$Res>
    extends _$AddPictureEventCopyWithImpl<$Res, _$ImagePickedImpl>
    implements _$$ImagePickedImplCopyWith<$Res> {
  __$$ImagePickedImplCopyWithImpl(
      _$ImagePickedImpl _value, $Res Function(_$ImagePickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$ImagePickedImpl(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$ImagePickedImpl implements ImagePicked {
  const _$ImagePickedImpl(this.image);

  @override
  final XFile image;

  @override
  String toString() {
    return 'AddPictureEvent.imagePicked(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePickedImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePickedImplCopyWith<_$ImagePickedImpl> get copyWith =>
      __$$ImagePickedImplCopyWithImpl<_$ImagePickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() selectImage,
    required TResult Function(XFile image) imagePicked,
  }) {
    return imagePicked(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? selectImage,
    TResult? Function(XFile image)? imagePicked,
  }) {
    return imagePicked?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? selectImage,
    TResult Function(XFile image)? imagePicked,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectImage value) selectImage,
    required TResult Function(ImagePicked value) imagePicked,
  }) {
    return imagePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectImage value)? selectImage,
    TResult? Function(ImagePicked value)? imagePicked,
  }) {
    return imagePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectImage value)? selectImage,
    TResult Function(ImagePicked value)? imagePicked,
    required TResult orElse(),
  }) {
    if (imagePicked != null) {
      return imagePicked(this);
    }
    return orElse();
  }
}

abstract class ImagePicked implements AddPictureEvent {
  const factory ImagePicked(final XFile image) = _$ImagePickedImpl;

  XFile get image;
  @JsonKey(ignore: true)
  _$$ImagePickedImplCopyWith<_$ImagePickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
