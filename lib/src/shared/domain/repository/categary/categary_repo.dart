import 'dart:convert';

import 'package:ecommerce_admin/src/shared/domain/core/api/api_base_service.dart';
import 'package:ecommerce_admin/src/shared/domain/models/categories_model.dart';

class CategaryRepository {
  String categoryEndPoint = '/admin/category';
  final baseApiClass = BaseApiService();
  Future<String> addCategory(String category, String accessToken) async {
    final response = await baseApiClass.postApiCall(
        accessToken, categoryEndPoint,
        body: {'category': category});
    if (response == null) {
      return 'Sorry,Server is unreachable';
    } else {
      final data = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(data.toString());
        return 'Success';
      } else {
        print(data['error'].toString());
        return data['error'];
      }
    }
  }

  Future<dynamic> getCategory(String accessToken) async {
    print(accessToken);
    final response =
        await baseApiClass.getApiCall(accessToken, categoryEndPoint);
    if (response == null) {
      return 'Sorry,Server is unreachable';
    } else {
      final data = jsonDecode(response.body);
      print(data.toString());
      if (data['status_code'] == 200 || data['status_code'] == 201) {
        if (data['data'] is List) {
          return (data['data'] as List)
              .map((map) => CategoryModel.fromMap(map))
              .toList();
        } else {
          print('Data is not a List: ${data['data']}');
          return 'Please add Category';
        }
      } else {
        return data['error'];
      }
    }
  }

  Future<String> deleteCategory(String accessToken, String id) async {
    final response =
        await baseApiClass.deleteApiCall(accessToken, categoryEndPoint, id);
    if (response == null) {
      return 'Sorry,Server is unreachable';
    } else {
      final data = jsonDecode(response.body);
      if (data['status_code'] == 200 || data['status_code'] == 201) {
        return 'Success';
      } else {
        return data['error'];
      }
    }
  }

  Future<String> editCategory(String accessToken, String id,
      String currentCategoryName, String newCategoryName) async {
    final response =
        await baseApiClass.putApiCall(accessToken, categoryEndPoint, body: {
      {"current": currentCategoryName, "new": newCategoryName}
    });
    if (response == null) {
      return 'Sorry, Server is unreachable';
    } else {
      final data = jsonDecode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return 'Success';
      } else {
        return data['error'];
      }
    }
  }
}
