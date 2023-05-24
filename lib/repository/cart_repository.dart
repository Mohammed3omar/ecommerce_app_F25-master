import 'package:dio/dio.dart';
import '../model/cart_model.dart';
import '../model/category_products_model.dart';


class CartRepository {
  Future<List<CartModel>> getAllCategories(int productid) async {
    // steps 2 --> fetching
    final response = await Dio()
        .get('https://dummyjson.com/carts/${productid}');

    // step 3 --> modeling
    // item dynamic -> item of CategoryRepoModel -> convert to List of CategoryRepoModel
    final listOfCategories = List<CartModel>.from(
      response.data.map(
            (value) => CartModel(
          id: value['id'],
          name: value['name'],
          image: value['image'],
        ),
      ),
    );

    print(listOfCategories);
    return listOfCategories;
  }

  Future<List<ProductModel>> getProductsByCategory(String categoryName) async {
    final response =
    await Dio().get('https://dummyjson.com/products/category/$categoryName');

    final categoryProducts = CategoryProducts.fromJson(response.data);

    return categoryProducts.products;
  }
}