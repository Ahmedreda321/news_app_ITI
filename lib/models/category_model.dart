class CategoryModel {
  final String typ;
  const CategoryModel({required this.typ});
}

// ignore: non_constant_identifier_names
List<CategoryModel> category_list = [
  const CategoryModel(typ: 'politics'),
  const CategoryModel(typ: 'Business'),
  const CategoryModel(typ: 'Health'),
  const CategoryModel(typ: 'Science'),
  const CategoryModel(typ: 'Sports'),
  const CategoryModel(typ: 'Technology'),
  const CategoryModel(typ: 'Entertaiment'),
];
