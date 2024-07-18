// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_picture_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPictureState {
  bool get isPickingImage => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPictureStateCopyWith<AddPictureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPictureStateCopyWith<$Res> {
  factory $AddPictureStateCopyWith(
          AddPictureState value, $Res Function(AddPictureState) then) =
      _$AddPictureStateCopyWithImpl<$Res, AddPictureState>;
  @useResult
  $Res call({bool isPickingImage, XFile? image});
}

/// @nodoc
class _$AddPictureStateCopyWithImpl<$Res, $Val extends AddPictureState>
    implements $AddPictureStateCopyWith<$Res> {
  _$AddPictureStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPickingImage = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      isPickingImage: null == isPickingImage
          ? _value.isPickingImage
          : isPickingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPictureStateImplCopyWith<$Res>
    implements $AddPictureStateCopyWith<$Res> {
  factory _$$AddPictureStateImplCopyWith(_$AddPictureStateImpl value,
          $Res Function(_$AddPictureStateImpl) then) =
      __$$AddPictureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPickingImage, XFile? image});
}

/// @nodoc
class __$$AddPictureStateImplCopyWithImpl<$Res>
    extends _$AddPictureStateCopyWithImpl<$Res, _$AddPictureStateImpl>
    implements _$$AddPictureStateImplCopyWith<$Res> {
  __$$AddPictureStateImplCopyWithImpl(
      _$AddPictureStateImpl _value, $Res Function(_$AddPictureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPickingImage = null,
    Object? image = freezed,
  }) {
    return _then(_$AddPictureStateImpl(
      isPickingImage: null == isPickingImage
          ? _value.isPickingImage
          : isPickingImage // ignore: cast_nullable_to_non_nullable
              as bool,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$AddPictureStateImpl implements _AddPictureState {
  const _$AddPictureStateImpl({required this.isPickingImage, this.image});

  @override
  final bool isPickingImage;
  @override
  final XFile? image;

  @override
  String toString() {
    return 'AddPictureState(isPickingImage: $isPickingImage, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPictureStateImpl &&
            (identical(other.isPickingImage, isPickingImage) ||
                other.isPickingImage == isPickingImage) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPickingImage, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPictureStateImplCopyWith<_$AddPictureStateImpl> get copyWith =>
      __$$AddPictureStateImplCopyWithImpl<_$AddPictureStateImpl>(
          this, _$identity);
}

abstract class _AddPictureState implements AddPictureState {
  const factory _AddPictureState(
      {required final bool isPickingImage,
      final XFile? image}) = _$AddPictureStateImpl;

  @override
  bool get isPickingImage;
  @override
  XFile? get image;
  @override
  @JsonKey(ignore: true)
  _$$AddPictureStateImplCopyWith<_$AddPictureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
