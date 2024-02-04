import '../model/category_model.dart';

abstract class CategoryRepo {
  Future<List<CategoryModel>> fetchAllCategory();
}
