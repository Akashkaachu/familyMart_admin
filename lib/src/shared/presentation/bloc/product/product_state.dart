part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _CategoryStateLoading;
  const factory ProductState.success(dynamic success) = _Success;
  const factory ProductState.error(String message) = _Error;
}
