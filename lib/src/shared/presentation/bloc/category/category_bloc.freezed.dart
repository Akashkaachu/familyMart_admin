// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryEvent {
  String get accessToken => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String accessToken) addCategory,
    required TResult Function(String accessToken) getCategory,
    required TResult Function(String accessToken, String id) deleteCategory,
    required TResult Function(String accessToken, String id,
            String currentCateryName, String newCategoryName)
        editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String accessToken)? addCategory,
    TResult? Function(String accessToken)? getCategory,
    TResult? Function(String accessToken, String id)? deleteCategory,
    TResult? Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String accessToken)? addCategory,
    TResult Function(String accessToken)? getCategory,
    TResult Function(String accessToken, String id)? deleteCategory,
    TResult Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) addCategory,
    required TResult Function(_GetCategoryEvent value) getCategory,
    required TResult Function(_DeleteCategoryEvent value) deleteCategory,
    required TResult Function(_EditCategoryEvent value) editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? addCategory,
    TResult? Function(_GetCategoryEvent value)? getCategory,
    TResult? Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(_EditCategoryEvent value)? editCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? addCategory,
    TResult Function(_GetCategoryEvent value)? getCategory,
    TResult Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult Function(_EditCategoryEvent value)? editCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryEventCopyWith<CategoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryEventCopyWith<$Res> {
  factory $CategoryEventCopyWith(
          CategoryEvent value, $Res Function(CategoryEvent) then) =
      _$CategoryEventCopyWithImpl<$Res, CategoryEvent>;
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class _$CategoryEventCopyWithImpl<$Res, $Val extends CategoryEvent>
    implements $CategoryEventCopyWith<$Res> {
  _$CategoryEventCopyWithImpl(this._value, this._then);

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
abstract class _$$AddCategoryEventImplCopyWith<$Res>
    implements $CategoryEventCopyWith<$Res> {
  factory _$$AddCategoryEventImplCopyWith(_$AddCategoryEventImpl value,
          $Res Function(_$AddCategoryEventImpl) then) =
      __$$AddCategoryEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String category, String accessToken});
}

/// @nodoc
class __$$AddCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$AddCategoryEventImpl>
    implements _$$AddCategoryEventImplCopyWith<$Res> {
  __$$AddCategoryEventImplCopyWithImpl(_$AddCategoryEventImpl _value,
      $Res Function(_$AddCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? accessToken = null,
  }) {
    return _then(_$AddCategoryEventImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCategoryEventImpl
    with DiagnosticableTreeMixin
    implements _AddCategoryEvent {
  const _$AddCategoryEventImpl(this.category, this.accessToken);

  @override
  final String category;
  @override
  final String accessToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.addCategory(category: $category, accessToken: $accessToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.addCategory'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('accessToken', accessToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryEventImplCopyWith<_$AddCategoryEventImpl> get copyWith =>
      __$$AddCategoryEventImplCopyWithImpl<_$AddCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String accessToken) addCategory,
    required TResult Function(String accessToken) getCategory,
    required TResult Function(String accessToken, String id) deleteCategory,
    required TResult Function(String accessToken, String id,
            String currentCateryName, String newCategoryName)
        editCategory,
  }) {
    return addCategory(category, accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String accessToken)? addCategory,
    TResult? Function(String accessToken)? getCategory,
    TResult? Function(String accessToken, String id)? deleteCategory,
    TResult? Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
  }) {
    return addCategory?.call(category, accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String accessToken)? addCategory,
    TResult Function(String accessToken)? getCategory,
    TResult Function(String accessToken, String id)? deleteCategory,
    TResult Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(category, accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) addCategory,
    required TResult Function(_GetCategoryEvent value) getCategory,
    required TResult Function(_DeleteCategoryEvent value) deleteCategory,
    required TResult Function(_EditCategoryEvent value) editCategory,
  }) {
    return addCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? addCategory,
    TResult? Function(_GetCategoryEvent value)? getCategory,
    TResult? Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(_EditCategoryEvent value)? editCategory,
  }) {
    return addCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? addCategory,
    TResult Function(_GetCategoryEvent value)? getCategory,
    TResult Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult Function(_EditCategoryEvent value)? editCategory,
    required TResult orElse(),
  }) {
    if (addCategory != null) {
      return addCategory(this);
    }
    return orElse();
  }
}

abstract class _AddCategoryEvent implements CategoryEvent {
  const factory _AddCategoryEvent(
      final String category, final String accessToken) = _$AddCategoryEventImpl;

  String get category;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$AddCategoryEventImplCopyWith<_$AddCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoryEventImplCopyWith<$Res>
    implements $CategoryEventCopyWith<$Res> {
  factory _$$GetCategoryEventImplCopyWith(_$GetCategoryEventImpl value,
          $Res Function(_$GetCategoryEventImpl) then) =
      __$$GetCategoryEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken});
}

/// @nodoc
class __$$GetCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$GetCategoryEventImpl>
    implements _$$GetCategoryEventImplCopyWith<$Res> {
  __$$GetCategoryEventImplCopyWithImpl(_$GetCategoryEventImpl _value,
      $Res Function(_$GetCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
  }) {
    return _then(_$GetCategoryEventImpl(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCategoryEventImpl
    with DiagnosticableTreeMixin
    implements _GetCategoryEvent {
  const _$GetCategoryEventImpl(this.accessToken);

  @override
  final String accessToken;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.getCategory(accessToken: $accessToken)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.getCategory'))
      ..add(DiagnosticsProperty('accessToken', accessToken));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoryEventImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoryEventImplCopyWith<_$GetCategoryEventImpl> get copyWith =>
      __$$GetCategoryEventImplCopyWithImpl<_$GetCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String accessToken) addCategory,
    required TResult Function(String accessToken) getCategory,
    required TResult Function(String accessToken, String id) deleteCategory,
    required TResult Function(String accessToken, String id,
            String currentCateryName, String newCategoryName)
        editCategory,
  }) {
    return getCategory(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String accessToken)? addCategory,
    TResult? Function(String accessToken)? getCategory,
    TResult? Function(String accessToken, String id)? deleteCategory,
    TResult? Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
  }) {
    return getCategory?.call(accessToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String accessToken)? addCategory,
    TResult Function(String accessToken)? getCategory,
    TResult Function(String accessToken, String id)? deleteCategory,
    TResult Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(accessToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) addCategory,
    required TResult Function(_GetCategoryEvent value) getCategory,
    required TResult Function(_DeleteCategoryEvent value) deleteCategory,
    required TResult Function(_EditCategoryEvent value) editCategory,
  }) {
    return getCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? addCategory,
    TResult? Function(_GetCategoryEvent value)? getCategory,
    TResult? Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(_EditCategoryEvent value)? editCategory,
  }) {
    return getCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? addCategory,
    TResult Function(_GetCategoryEvent value)? getCategory,
    TResult Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult Function(_EditCategoryEvent value)? editCategory,
    required TResult orElse(),
  }) {
    if (getCategory != null) {
      return getCategory(this);
    }
    return orElse();
  }
}

abstract class _GetCategoryEvent implements CategoryEvent {
  const factory _GetCategoryEvent(final String accessToken) =
      _$GetCategoryEventImpl;

  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$GetCategoryEventImplCopyWith<_$GetCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategoryEventImplCopyWith<$Res>
    implements $CategoryEventCopyWith<$Res> {
  factory _$$DeleteCategoryEventImplCopyWith(_$DeleteCategoryEventImpl value,
          $Res Function(_$DeleteCategoryEventImpl) then) =
      __$$DeleteCategoryEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String id});
}

/// @nodoc
class __$$DeleteCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$DeleteCategoryEventImpl>
    implements _$$DeleteCategoryEventImplCopyWith<$Res> {
  __$$DeleteCategoryEventImplCopyWithImpl(_$DeleteCategoryEventImpl _value,
      $Res Function(_$DeleteCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? id = null,
  }) {
    return _then(_$DeleteCategoryEventImpl(
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

class _$DeleteCategoryEventImpl
    with DiagnosticableTreeMixin
    implements _DeleteCategoryEvent {
  const _$DeleteCategoryEventImpl(this.accessToken, this.id);

  @override
  final String accessToken;
  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.deleteCategory(accessToken: $accessToken, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.deleteCategory'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryEventImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accessToken, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      __$$DeleteCategoryEventImplCopyWithImpl<_$DeleteCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String accessToken) addCategory,
    required TResult Function(String accessToken) getCategory,
    required TResult Function(String accessToken, String id) deleteCategory,
    required TResult Function(String accessToken, String id,
            String currentCateryName, String newCategoryName)
        editCategory,
  }) {
    return deleteCategory(accessToken, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String accessToken)? addCategory,
    TResult? Function(String accessToken)? getCategory,
    TResult? Function(String accessToken, String id)? deleteCategory,
    TResult? Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
  }) {
    return deleteCategory?.call(accessToken, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String accessToken)? addCategory,
    TResult Function(String accessToken)? getCategory,
    TResult Function(String accessToken, String id)? deleteCategory,
    TResult Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(accessToken, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) addCategory,
    required TResult Function(_GetCategoryEvent value) getCategory,
    required TResult Function(_DeleteCategoryEvent value) deleteCategory,
    required TResult Function(_EditCategoryEvent value) editCategory,
  }) {
    return deleteCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? addCategory,
    TResult? Function(_GetCategoryEvent value)? getCategory,
    TResult? Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(_EditCategoryEvent value)? editCategory,
  }) {
    return deleteCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? addCategory,
    TResult Function(_GetCategoryEvent value)? getCategory,
    TResult Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult Function(_EditCategoryEvent value)? editCategory,
    required TResult orElse(),
  }) {
    if (deleteCategory != null) {
      return deleteCategory(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategoryEvent implements CategoryEvent {
  const factory _DeleteCategoryEvent(
      final String accessToken, final String id) = _$DeleteCategoryEventImpl;

  @override
  String get accessToken;
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCategoryEventImplCopyWith<$Res>
    implements $CategoryEventCopyWith<$Res> {
  factory _$$EditCategoryEventImplCopyWith(_$EditCategoryEventImpl value,
          $Res Function(_$EditCategoryEventImpl) then) =
      __$$EditCategoryEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String id,
      String currentCateryName,
      String newCategoryName});
}

/// @nodoc
class __$$EditCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoryEventCopyWithImpl<$Res, _$EditCategoryEventImpl>
    implements _$$EditCategoryEventImplCopyWith<$Res> {
  __$$EditCategoryEventImplCopyWithImpl(_$EditCategoryEventImpl _value,
      $Res Function(_$EditCategoryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? id = null,
    Object? currentCateryName = null,
    Object? newCategoryName = null,
  }) {
    return _then(_$EditCategoryEventImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentCateryName: null == currentCateryName
          ? _value.currentCateryName
          : currentCateryName // ignore: cast_nullable_to_non_nullable
              as String,
      newCategoryName: null == newCategoryName
          ? _value.newCategoryName
          : newCategoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditCategoryEventImpl
    with DiagnosticableTreeMixin
    implements _EditCategoryEvent {
  const _$EditCategoryEventImpl(
      {required this.accessToken,
      required this.id,
      required this.currentCateryName,
      required this.newCategoryName});

  @override
  final String accessToken;
  @override
  final String id;
  @override
  final String currentCateryName;
  @override
  final String newCategoryName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryEvent.editCategory(accessToken: $accessToken, id: $id, currentCateryName: $currentCateryName, newCategoryName: $newCategoryName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryEvent.editCategory'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('currentCateryName', currentCateryName))
      ..add(DiagnosticsProperty('newCategoryName', newCategoryName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCategoryEventImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentCateryName, currentCateryName) ||
                other.currentCateryName == currentCateryName) &&
            (identical(other.newCategoryName, newCategoryName) ||
                other.newCategoryName == newCategoryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, accessToken, id, currentCateryName, newCategoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCategoryEventImplCopyWith<_$EditCategoryEventImpl> get copyWith =>
      __$$EditCategoryEventImplCopyWithImpl<_$EditCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String category, String accessToken) addCategory,
    required TResult Function(String accessToken) getCategory,
    required TResult Function(String accessToken, String id) deleteCategory,
    required TResult Function(String accessToken, String id,
            String currentCateryName, String newCategoryName)
        editCategory,
  }) {
    return editCategory(accessToken, id, currentCateryName, newCategoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String category, String accessToken)? addCategory,
    TResult? Function(String accessToken)? getCategory,
    TResult? Function(String accessToken, String id)? deleteCategory,
    TResult? Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
  }) {
    return editCategory?.call(
        accessToken, id, currentCateryName, newCategoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String category, String accessToken)? addCategory,
    TResult Function(String accessToken)? getCategory,
    TResult Function(String accessToken, String id)? deleteCategory,
    TResult Function(String accessToken, String id, String currentCateryName,
            String newCategoryName)?
        editCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(accessToken, id, currentCateryName, newCategoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) addCategory,
    required TResult Function(_GetCategoryEvent value) getCategory,
    required TResult Function(_DeleteCategoryEvent value) deleteCategory,
    required TResult Function(_EditCategoryEvent value) editCategory,
  }) {
    return editCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? addCategory,
    TResult? Function(_GetCategoryEvent value)? getCategory,
    TResult? Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult? Function(_EditCategoryEvent value)? editCategory,
  }) {
    return editCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? addCategory,
    TResult Function(_GetCategoryEvent value)? getCategory,
    TResult Function(_DeleteCategoryEvent value)? deleteCategory,
    TResult Function(_EditCategoryEvent value)? editCategory,
    required TResult orElse(),
  }) {
    if (editCategory != null) {
      return editCategory(this);
    }
    return orElse();
  }
}

abstract class _EditCategoryEvent implements CategoryEvent {
  const factory _EditCategoryEvent(
      {required final String accessToken,
      required final String id,
      required final String currentCateryName,
      required final String newCategoryName}) = _$EditCategoryEventImpl;

  @override
  String get accessToken;
  String get id;
  String get currentCateryName;
  String get newCategoryName;
  @override
  @JsonKey(ignore: true)
  _$$EditCategoryEventImplCopyWith<_$EditCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryState {
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
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryState.initial'));
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

abstract class _Initial implements CategoryState {
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
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateLoadingImpl>
    implements _$$CategoryStateLoadingImplCopyWith<$Res> {
  __$$CategoryStateLoadingImplCopyWithImpl(_$CategoryStateLoadingImpl _value,
      $Res Function(_$CategoryStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryStateLoadingImpl
    with DiagnosticableTreeMixin
    implements _CategoryStateLoading {
  const _$CategoryStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryState.loading'));
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

abstract class _CategoryStateLoading implements CategoryState {
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
    extends _$CategoryStateCopyWithImpl<$Res, _$SuccessImpl>
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

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl(this.success);

  @override
  final dynamic success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.success(success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState.success'))
      ..add(DiagnosticsProperty('success', success));
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

abstract class _Success implements CategoryState {
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
    extends _$CategoryStateCopyWithImpl<$Res, _$ErrorImpl>
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

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState.error'))
      ..add(DiagnosticsProperty('message', message));
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

abstract class _Error implements CategoryState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
