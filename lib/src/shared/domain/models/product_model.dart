class ProductModel {
  int? id;
  int categoryId;
  String description;
  String name;
  double price;
  int size;
  int stock;

  ProductModel(
      {required this.categoryId,
      required this.description,
      required this.name,
      required this.price,
      required this.size,
      required this.stock,
      this.id});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      categoryId: json['category_id'] as int,
      description: json['description'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      size: json['size'] as int,
      stock: json['stock'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category_id': categoryId,
      'description': description,
      'name': name,
      'price': price,
      'size': size,
      'stock': stock,
    };
  }

  @override
  String toString() {
    return 'ProductModel(categoryId: $categoryId, description: $description, name: $name, price: $price, size: $size, stock: $stock)';
  }
}
