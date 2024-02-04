import '../../../home/data/models/product_model.dart';
import '../../../../core/api_servise.dart';
import 'package:dio/dio.dart';

Future<List<ProductModel>> getAllOrders() async {
  final dio = Dio();

  List<ProductModel> productList = [];
  Response response = await dio.get('${ApiServise.baseUrl}/carts');

  Response allProductResponse = await dio.get('${ApiServise.baseUrl}/products');

  for (var elementOfProduct in allProductResponse.data) {
    for (var elementOfOrders in response.data) {
      if (elementOfOrders['id'] == elementOfProduct['id']) {
        productList.add(ProductModel.fromJson(elementOfProduct));
      }
    }
  }

  return productList;
}
