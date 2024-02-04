import '../../data/repository/category_api.dart';
import '../../data/model/category_model.dart';

Future<List<CategoryModel>> fetchAllCategory() async {
  return await CategoryApi().fetchAllCategory();
}
