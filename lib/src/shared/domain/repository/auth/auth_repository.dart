import 'dart:convert';
import 'dart:io';
import 'package:ecommerce_admin/src/helper/sharedpreference.dart';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ecommerce_admin/src/shared/domain/models/admin_data_model.dart';

class AuthRepository {
  String loginEndPoint = '/admin/adminlogin';

  Future<String> logIn(AdminModelClass modelClass) async {
    try {
      print(modelClass.toJson().toString());
      final response = await http.post(
          Uri.parse('${AppDevConfig.baseUrl}$loginEndPoint'),
          headers: {
            'content-Type': 'application/json',
            'accept': 'application/json'
          },
          body: jsonEncode(modelClass.toJson()));
      print(response.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = jsonDecode(response.body);
        print(data.toString());
        String usersId = data['data']['Admin']['id'].toString();
        print(usersId);
        final accessToken = data['data']['Token'];
        // final refreshToken = data['data']['RefreshToken'];
        SharedPreferenceClass.saveAdminId(usersId);
        SharedPreferenceClass.saveAdminAccessToken(accessToken);
        SharedPreferenceClass.saveAdminLoggedfun(true);
        //  SharedPreferenceClass.saveuserRefreshToken(refreshToken);
        print('successfully stored user datas');
        return 'success';
      } else {
        final data = jsonDecode(response.body);
        print(data['error']);
        return (data['error']);
      }
    } catch (e) {
      if (e is HttpException) {
        debugPrint('Post:: $e');
        return e.toString();
      } else {
        debugPrint('Get Request Error: $e');
        return e.toString();
      }
    }
  }
}
