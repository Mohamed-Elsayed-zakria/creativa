import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:createva/core/firebase_servise.dart';
import '../model/category_model.dart';
import 'category_repo.dart';

class CategoryApi implements CategoryRepo {
  @override
  Future<List<CategoryModel>> fetchAllCategory() async {
    List<CategoryModel> allCategoryList = [];

    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await FirebaseService.firestore.collection('category').get();
    for (var doc in querySnapshot.docs) {
      allCategoryList.add(CategoryModel.fromJson(doc.data()));
    }

    return allCategoryList;
  }
}
