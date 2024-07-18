part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _CategoryStateLoading;
  const factory CategoryState.success(dynamic success) = _Success;
  const factory CategoryState.error(String message) = _Error;
}
