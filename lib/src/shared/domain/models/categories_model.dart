class CategoryModel {
  final int id;
  final String category;

  CategoryModel({required this.id, required this.category});

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as int,
      category: map['category'] as String? ?? '',
    );
  }

  @override
  String toString() {
    return 'Category(id: $id, category: $category)';
  }
}
