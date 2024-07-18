// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  String get accessToken => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, ProductModel productModel)
        addProduct,
    required TResult Function(String accessToken) getProduct,
    required TResult Function(String accessToken, int productId, XFile image)
        uploadImage,
    required TResult Function(String accessToken, String id) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, ProductModel productModel)?
        addProduct,
    TResult? Function(String accessToken)? getProduct,
    TResult? Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult? Function(String accessToken, String id)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, ProductModel productModel)? addProduct,
    TResult Function(String accessToken)? getProduct,
    TResult Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult Function(String accessToken, String id)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_GetProductEvent value) getProduct,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteProductEvent value) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_GetProductEvent value)? getProduct,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteProductEvent value)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_GetProductEvent value)? getProduct,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteProductEvent value)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductEventCopyWith<ProductEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddProductEventImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$AddProductEventImplCopyWith(_$AddProductEventImpl value,
          $Res Function(_$AddProductEventImpl) then) =
      __$$AddProductEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, ProductModel productModel});
}

/// @nodoc
class __$$AddProductEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$AddProductEventImpl>
    implements _$$AddProductEventImplCopyWith<$Res> {
  __$$AddProductEventImplCopyWithImpl(
      _$AddProductEventImpl _value, $Res Function(_$AddProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? productModel = null,
  }) {
    return _then(_$AddProductEventImpl(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == productModel
          ? _value.productModel
          : productModel // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc

class _$AddProductEventImpl implements _AddProductEvent {
  const _$AddProductEventImpl(this.accessToken, this.productModel);

  @override
  final String accessToken;
  @override
  final ProductModel productModel;

  @override
  String toString() {
    return 'ProductEvent.addProduct(accessToken: $accessToken, productModel: $productModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductEventImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.productModel, productModel) ||
                other.productModel == productModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, productModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductEventImplCopyWith<_$AddProductEventImpl> get copyWith =>
      __$$AddProductEventImplCopyWithImpl<_$AddProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, ProductModel productModel)
        addProduct,
    required TResult Function(String accessToken) getProduct,
    required TResult Function(String accessToken, int productId, XFile image)
        uploadImage,
    required TResult Function(String accessToken, String id) deleteProduct,
  }) {
    return addProduct(accessToken, productModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, ProductModel productModel)?
        addProduct,
    TResult? Function(String accessToken)? getProduct,
    TResult? Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult? Function(String accessToken, String id)? deleteProduct,
  }) {
    return addProduct?.call(accessToken, productModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, ProductModel productModel)? addProduct,
    TResult Function(String accessToken)? getProduct,
    TResult Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult Function(String accessToken, String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(accessToken, productModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_GetProductEvent value) getProduct,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteProductEvent value) deleteProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_GetProductEvent value)? getProduct,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteProductEvent value)? deleteProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_GetProductEvent value)? getProduct,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteProductEvent value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _AddProductEvent implements ProductEvent {
  const factory _AddProductEvent(
          final String accessToken, final ProductModel productModel) =
      _$AddProductEventImpl;

  @override
  String get accessToken;
  ProductModel get productModel;
  @override
  @JsonKey(ignore: true)
  _$$AddProductEventImplCopyWith<_$AddProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductEventImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$GetProductEventImplCopyWith(_$GetProductEventImpl value,
          $Res Function(_$GetProductEventImpl) then) =
      __$$GetProductEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$GetProductEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GetProductEventImpl>
    implements _$$GetProductEventImplCopyWith<$Res> {
  __$$GetProductEventImplCopyWithImpl(
      _$GetProductEventImpl _value, $Res Function(_$GetProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$GetProductEventImpl(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetProductEventImpl implements _GetProductEvent {
  const _$GetProductEventImpl(this.accessToken);

  @override
  final String accessToken;

  @override
  String toString() {
    return 'ProductEvent.getProduct(accessToken: $accessToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductEventImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductEventImplCopyWith<_$GetProductEventImpl> get copyWith =>
      __$$GetProductEventImplCopyWithImpl<_$GetProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, ProductModel productModel)
        addProduct,
    required TResult Function(String accessToken) getProduct,
    required TResult Function(String accessToken, int productId, XFile image)
        uploadImage,
    required TResult Function(String accessToken, String id) deleteProduct,
  }) {
    return getProduct(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, ProductModel productModel)?
        addProduct,
    TResult? Function(String accessToken)? getProduct,
    TResult? Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult? Function(String accessToken, String id)? deleteProduct,
  }) {
    return getProduct?.call(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, ProductModel productModel)? addProduct,
    TResult Function(String accessToken)? getProduct,
    TResult Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult Function(String accessToken, String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_GetProductEvent value) getProduct,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteProductEvent value) deleteProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_GetProductEvent value)? getProduct,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteProductEvent value)? deleteProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_GetProductEvent value)? getProduct,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteProductEvent value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class _GetProductEvent implements ProductEvent {
  const factory _GetProductEvent(final String accessToken) =
      _$GetProductEventImpl;

  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$GetProductEventImplCopyWith<_$GetProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
          _$UploadImageImpl value, $Res Function(_$UploadImageImpl) then) =
      __$$UploadImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, int productId, XFile image});
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl _value, $Res Function(_$UploadImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? productId = null,
    Object? image = null,
  }) {
    return _then(_$UploadImageImpl(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$UploadImageImpl implements _UploadImage {
  const _$UploadImageImpl(this.accessToken, this.productId, this.image);

  @override
  final String accessToken;
  @override
  final int productId;
  @override
  final XFile image;

  @override
  String toString() {
    return 'ProductEvent.uploadImage(accessToken: $accessToken, productId: $productId, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, productId, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      __$$UploadImageImplCopyWithImpl<_$UploadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, ProductModel productModel)
        addProduct,
    required TResult Function(String accessToken) getProduct,
    required TResult Function(String accessToken, int productId, XFile image)
        uploadImage,
    required TResult Function(String accessToken, String id) deleteProduct,
  }) {
    return uploadImage(accessToken, productId, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, ProductModel productModel)?
        addProduct,
    TResult? Function(String accessToken)? getProduct,
    TResult? Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult? Function(String accessToken, String id)? deleteProduct,
  }) {
    return uploadImage?.call(accessToken, productId, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, ProductModel productModel)? addProduct,
    TResult Function(String accessToken)? getProduct,
    TResult Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult Function(String accessToken, String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(accessToken, productId, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_GetProductEvent value) getProduct,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteProductEvent value) deleteProduct,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_GetProductEvent value)? getProduct,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteProductEvent value)? deleteProduct,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_GetProductEvent value)? getProduct,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteProductEvent value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements ProductEvent {
  const factory _UploadImage(
          final String accessToken, final int productId, final XFile image) =
      _$UploadImageImpl;

  @override
  String get accessToken;
  int get productId;
  XFile get image;
  @override
  @JsonKey(ignore: true)
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProductEventImplCopyWith<$Res>
    implements $ProductEventCopyWith<$Res> {
  factory _$$DeleteProductEventImplCopyWith(_$DeleteProductEventImpl value,
          $Res Function(_$DeleteProductEventImpl) then) =
      __$$DeleteProductEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String id});
}

/// @nodoc
class __$$DeleteProductEventImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$DeleteProductEventImpl>
    implements _$$DeleteProductEventImplCopyWith<$Res> {
  __$$DeleteProductEventImplCopyWithImpl(_$DeleteProductEventImpl _value,
      $Res Function(_$DeleteProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? id = null,
  }) {
    return _then(_$DeleteProductEventImpl(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProductEventImpl implements _DeleteProductEvent {
  const _$DeleteProductEventImpl(this.accessToken, this.id);

  @override
  final String accessToken;
  @override
  final String id;

  @override
  String toString() {
    return 'ProductEvent.deleteProduct(accessToken: $accessToken, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductEventImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductEventImplCopyWith<_$DeleteProductEventImpl> get copyWith =>
      __$$DeleteProductEventImplCopyWithImpl<_$DeleteProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String accessToken, ProductModel productModel)
        addProduct,
    required TResult Function(String accessToken) getProduct,
    required TResult Function(String accessToken, int productId, XFile image)
        uploadImage,
    required TResult Function(String accessToken, String id) deleteProduct,
  }) {
    return deleteProduct(accessToken, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String accessToken, ProductModel productModel)?
        addProduct,
    TResult? Function(String accessToken)? getProduct,
    TResult? Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult? Function(String accessToken, String id)? deleteProduct,
  }) {
    return deleteProduct?.call(accessToken, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String accessToken, ProductModel productModel)? addProduct,
    TResult Function(String accessToken)? getProduct,
    TResult Function(String accessToken, int productId, XFile image)?
        uploadImage,
    TResult Function(String accessToken, String id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(accessToken, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddProductEvent value) addProduct,
    required TResult Function(_GetProductEvent value) getProduct,
    required TResult Function(_UploadImage value) uploadImage,
    required TResult Function(_DeleteProductEvent value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddProductEvent value)? addProduct,
    TResult? Function(_GetProductEvent value)? getProduct,
    TResult? Function(_UploadImage value)? uploadImage,
    TResult? Function(_DeleteProductEvent value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddProductEvent value)? addProduct,
    TResult Function(_GetProductEvent value)? getProduct,
    TResult Function(_UploadImage value)? uploadImage,
    TResult Function(_DeleteProductEvent value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProductEvent implements ProductEvent {
  const factory _DeleteProductEvent(final String accessToken, final String id) =
      _$DeleteProductEventImpl;

  @override
  String get accessToken;
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$DeleteProductEventImplCopyWith<_$DeleteProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic success) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic success)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic success)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CategoryStateLoading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic success) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic success)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic success)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CategoryStateLoading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CategoryStateLoadingImplCopyWith<$Res> {
  factory _$$CategoryStateLoadingImplCopyWith(_$CategoryStateLoadingImpl value,
          $Res Function(_$CategoryStateLoadingImpl) then) =
      __$$CategoryStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryStateLoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$CategoryStateLoadingImpl>
    implements _$$CategoryStateLoadingImplCopyWith<$Res> {
  __$$CategoryStateLoadingImplCopyWithImpl(_$CategoryStateLoadingImpl _value,
      $Res Function(_$CategoryStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryStateLoadingImpl implements _CategoryStateLoading {
  const _$CategoryStateLoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic success) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic success)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic success)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CategoryStateLoading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CategoryStateLoading implements ProductState {
  const factory _CategoryStateLoading() = _$CategoryStateLoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic success});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(_$SuccessImpl(
      freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.success);

  @override
  final dynamic success;

  @override
  String toString() {
    return 'ProductState.success(success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic success) success,
    required TResult Function(String message) error,
  }) {
    return success(this.success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic success)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(this.success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic success)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this.success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CategoryStateLoading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ProductState {
  const factory _Success(final dynamic success) = _$SuccessImpl;

  dynamic get success;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic success) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic success)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic success)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CategoryStateLoading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CategoryStateLoading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CategoryStateLoading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProductState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
