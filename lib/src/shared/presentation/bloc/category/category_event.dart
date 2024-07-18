part of 'category_bloc.dart';

@freezed
class CategoryEvent with _$CategoryEvent {
  const factory CategoryEvent.addCategory(String category, String accessToken) =
      _AddCategoryEvent;
  const factory CategoryEvent.getCategory(String accessToken) =
      _GetCategoryEvent;
  const factory CategoryEvent.deleteCategory(String accessToken, String id) =
      _DeleteCategoryEvent;
  const factory CategoryEvent.editCategory(
      {required String accessToken,
      required String id,
      required String currentCateryName,
      required String newCategoryName}) = _EditCategoryEvent;
}
