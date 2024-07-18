part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.addProduct(
      String accessToken, ProductModel productModel) = _AddProductEvent;
  const factory ProductEvent.getProduct(String accessToken) = _GetProductEvent;
  const factory ProductEvent.uploadImage(
      String accessToken, int productId, XFile image) = _UploadImage;
  const factory ProductEvent.deleteProduct(String accessToken, String id) =
      _DeleteProductEvent;
}
