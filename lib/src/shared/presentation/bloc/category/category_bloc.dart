import 'package:ecommerce_admin/src/shared/domain/repository/categary/categary_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategaryRepository categaryRepository;
  CategoryBloc(this.categaryRepository) : super(const CategoryState.initial()) {
    on<_AddCategoryEvent>((event, emit) async {
      emit(const CategoryState.loading());
      try {
        final result = await CategaryRepository()
            .addCategory(event.category, event.accessToken);
        if (result == 'Success') {
          return emit(CategoryState.success(result));
        } else {
          return emit(CategoryState.error(result));
        }
      } catch (e) {
        return emit(CategoryState.error(e.toString()));
      }
    });
    on<_GetCategoryEvent>((event, emit) async {
      emit(const CategoryState.loading());
      try {
        final result = await categaryRepository.getCategory(event.accessToken);
        if (result is String) {
          emit(CategoryState.error(result));
        } else {
          print(result.toString());
          emit(CategoryState.success(result));
        }
      } catch (e) {
        emit(CategoryState.error(e.toString()));
      }
    });
    on<_DeleteCategoryEvent>((event, emit) async {
      emit(const CategoryState.loading());
      try {
        final result = await categaryRepository.deleteCategory(
            event.accessToken, event.id);
        if (result == 'Success') {
          emit(CategoryState.success(result));
        } else {
          emit(CategoryState.error(result));
        }
      } catch (e) {
        emit(CategoryState.error(e.toString()));
      }
    });
    on<_EditCategoryEvent>((event, emit) async {
      emit(const CategoryState.loading());
      try {
        final result = await categaryRepository.editCategory(event.accessToken,
            event.id, event.currentCateryName, event.newCategoryName);
        if (result == 'Success') {
          emit(CategoryState.success(result));
        } else {
          emit(CategoryState.error(result));
        }
      } catch (e) {
        emit(CategoryState.error(e.toString()));
      }
    });
  }
}
