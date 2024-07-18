import 'package:bloc/bloc.dart';
import 'package:ecommerce_admin/src/shared/domain/models/product_model.dart';
import 'package:ecommerce_admin/src/shared/domain/repository/product/product_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;
  ProductBloc(this.productRepository) : super(const ProductState.initial()) {
    on<_AddProductEvent>((event, emit) async {
      emit(const ProductState.loading());
      try {
        final result = await ProductRepository()
            .addProductDetails(event.accessToken, event.productModel);
        if (result is int) {
          return emit(ProductState.success(result));
        } else {
          return emit(ProductState.error(result));
        }
      } catch (e) {
        return emit(ProductState.error(e.toString()));
      }
    });
    on<_GetProductEvent>((event, emit) async {
      emit(const ProductState.loading());
      try {
        final result =
            await ProductRepository().getProductDetails(event.accessToken);
        if (result is String) {
          return emit(ProductState.error(result));
        } else {
          return emit(ProductState.success(result));
        }
      } catch (e) {
        return emit(ProductState.error(e.toString()));
      }
    });
    on<_UploadImage>((event, emit) async {
      emit(const ProductState.loading());
      try {
        final result = await ProductRepository().uploadProductImage(
            event.accessToken, event.productId, event.image);
        if (result == 'Success') {
          return emit(ProductState.success(result));
        } else {
          return emit(ProductState.error(result));
        }
      } catch (e) {
        return emit(ProductState.error(e.toString()));
      }
    });
    on<_DeleteProductEvent>((event, emit) async {
      try {
        final result = await ProductRepository()
            .deleteProductDetails(event.accessToken, event.id);
        if (result == 'delete') {
          return emit(ProductState.success(result));
        } else {
          return emit(ProductState.error(result));
        }
      } catch (e) {
        return emit(ProductState.error(e.toString()));
      }
    });
  }
}
