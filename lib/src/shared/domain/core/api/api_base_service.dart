import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:ecommerce_admin/src/shared/domain/core/api/app_config.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';

class BaseApiService {
  Future<http.Response?> postApiCall(
    String? accessToken,
    String apiEndPoint, {
    dynamic body,
    String? contentType,
  }) async {
    try {
      debugPrint('api : ${AppDevConfig.baseUrl + apiEndPoint} body: $body');
      final response = await http.post(
        Uri.parse(AppDevConfig.baseUrl + apiEndPoint),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken'
        },
        body: jsonEncode(body),
      );
      logApiResponse(response);
      return response;
    } catch (e) {
      handleApiError('Post', e);
      return null;
    }
  }

  Future<http.Response?> getApiCall(
    String? accessToken,
    String apiEndPoint, {
    dynamic body,
    String? contentType,
  }) async {
    try {
      final headers =
          accessToken != null ? {'Authorization': 'Bearer $accessToken'} : null;

      debugPrint('URL ${AppDevConfig.baseUrl}$apiEndPoint');

      final response = await http.get(
        Uri.parse(AppDevConfig.baseUrl + apiEndPoint),
        headers: headers,
      );
      print(response);
      return response;
    } catch (e) {
      handleApiError('Get', e);
      return null;
    }
  }

  Future<http.Response?> patchApiCall(
    String accessToken,
    String apiEndPoint, {
    dynamic body,
    String? contentType,
  }) async {
    try {
      debugPrint("url : ${AppDevConfig.baseUrl + apiEndPoint}");
      final response = await http.patch(
        Uri.parse(AppDevConfig.baseUrl + apiEndPoint),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
        body: jsonEncode(body),
      );
      return response;
    } catch (e) {
      handleApiError('Patch', e);
      return null;
    }
  }

  Future<String> uploadProfilePicture(String userAccessToken,
      XFile? profilePicture, String apiEndPoints) async {
    try {
      var uri = Uri.parse('${AppDevConfig.baseUrl}$apiEndPoints');
      var request = http.MultipartRequest('POST', uri);

      // Add headers
      request.headers.addAll({
        'Authorization': 'Bearer $userAccessToken',
      });

      // Add file
      if (profilePicture != null) {
        var file = await http.MultipartFile.fromPath(
          'profile-picture',
          profilePicture.path,
          filename: profilePicture.name,
          contentType: MediaType('image', 'jpeg'),
        );
        request.files.add(file);
      }

      // Send request
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        return 'success';
      } else {
        Map<String, dynamic> responseData = json.decode(response.body);
        String errorMessage =
            responseData['error'] ?? 'Failed to upload profile picture';
        print('Error message: $errorMessage');
        return errorMessage;
      }
    } catch (e) {
      print(e.toString());
      throw Exception('Failed to upload profile picture: ${e.toString()}');
    }
  }

  Future<http.Response?> putApiCall(
    String accessToken,
    String apiEndPoint, {
    dynamic body,
    String? contentType,
  }) async {
    try {
      final response = await http.put(
        Uri.parse(AppDevConfig.baseUrl + apiEndPoint),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
        body: jsonEncode(body),
      );
      return response;
    } catch (e) {
      handleApiError('Put', e);
      return null;
    }
  }

  Future<http.Response?> deleteApiCall(
      String accessToken, String apiEndPoint, String id) async {
    try {
      debugPrint('${AppDevConfig.baseUrl}$apiEndPoint?id=$id');
      final response = await http.delete(
        Uri.parse('${AppDevConfig.baseUrl}$apiEndPoint?id=$id'),
        headers: {'Authorization': 'Bearer $accessToken'},
      );
      return response;
    } catch (e) {
      handleApiError('delete', e);
      return null;
    }
  }
}

void handleApiError(String source, dynamic error) {
  debugPrint(' $source : Request Error: $error');
  if (error is SocketException || error is TimeoutException) {
    Fluttertoast.showToast(msg: "No Internet Connection");
  }
}

void logApiResponse(http.Response? response) {
  if (response != null) {
    debugPrint('Response statuscode : ${response.statusCode}');
    debugPrint('Response body: ${response.body}');
  }
}
