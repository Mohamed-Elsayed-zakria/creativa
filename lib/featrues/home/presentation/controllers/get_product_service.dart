import '../../../../core/api_servise.dart';
import '../../data/models/product_model.dart';
import 'package:dio/dio.dart';

Future<List<ProductModel>> getAllProduct() async {
  final dio = Dio();

  List<ProductModel> productList = [];

  Response response = await dio.get('${ApiServise.baseUrl}/products');

  for (var element in response.data) {
    productList.add(ProductModel.fromJson(element));
  }

  return productList;
}
