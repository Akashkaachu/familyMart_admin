import 'dart:convert';
import 'dart:developer';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ecommerce_admin/src/shared/domain/core/api/api_base_service.dart';
import 'package:ecommerce_admin/src/shared/domain/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductRepository {
  String productEndPoint = '/admin/products';
  final baseApiClass = BaseApiService();
  Future<dynamic> addProductDetails(
      String accessToken, ProductModel productModel) async {
    final response = await baseApiClass
        .postApiCall(accessToken, productEndPoint, body: productModel.toJson());
    if (response == null) {
      return 'Sorry,Server is unreachable';
    } else {
      final data = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(data.toString());
        return data['data']['id'];
      } else {
        return data['error'];
      }
    }
  }

  Future<dynamic> getProductDetails(String accessToken) async {
    final response =
        await baseApiClass.getApiCall(accessToken, productEndPoint);
    if (response == null) {
      return 'Sorry,Server is unreachable';
    } else {
      final data = jsonDecode(response.body);
      print(data.toString());
      if (data['status_code'] == 200 || data['status_code'] == 201) {
        if (data['data'] is List) {
          return (data['data'] as List)
              .map((map) => ProductModel.fromJson(map))
              .toList();
        } else {
          print('Data is not a List: ${data['data']}');
          return 'Invalid data format';
        }
      } else {
        return data['error'];
      }
    }
  }

  Future<dynamic> deleteProductDetails(String accessToken, String id) async {
    final response =
        await baseApiClass.deleteApiCall(accessToken, productEndPoint, id);
    if (response == null) {
      return 'Sorry,Server is unreachable';
    } else {
      final data = jsonDecode(response.body);
      print(data.toString());
      if (data['status_code'] == 200 || data['status_code'] == 201) {
        return 'delete';
      } else {
        return data['error'];
      }
    }
  }

  Future<String> uploadProductImage(
      String accessToken, int productId, XFile image) async {
    try {
      var request = http.MultipartRequest(
          'POST', Uri.parse('${AppDevConfig.baseUrl}$productEndPoint'));
      request.headers['Authorization'] = 'Bearer $accessToken';
      request.fields['product_id'] = productId.toString();
      request.files.add(await http.MultipartFile.fromPath('files', image.path));

      var response = await request.send();
      var responseBody = await response.stream.bytesToString();
      var responseData = jsonDecode(responseBody);

      if (response.statusCode == 200 || response.statusCode == 201) {
        if (responseData['status_code'] == 200 ||
            responseData['status_code'] == 201) {
          return "Success";
        } else {
          return responseData['error'];
        }
      } else {
        return 'Failed to add product. Status code: ${response.statusCode}';
      }
    } catch (e) {
      log(e.toString());
      handleApiError('POST', e);
      handleApiError('Get', e);
      return e.toString();
    }
  }
}
