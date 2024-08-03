import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:online_food_project/constant/constant.dart';
import 'package:online_food_project/core/api.dart';

import '../constant/custom_storage.dart';

class AuthRepo {
  Dio dio = Dio();

  Future<Response> register(
      {String? name,
      String? email,
      String? password,
      String? address,
      int? phoneNumber}) async {
    String url = "${Api.baseUrl}user/register";
    try {
      final formData = {
        'name': name,
        'email': email,
        'password': password,
        'address': address,
        "phoneNumber": phoneNumber
      };
      final response = await dio.post(
        url,
        data: formData,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      if (response.data['success']) {
        return response;
      } else {
        return response;
      }
    } on DioException catch (e) {
      log("DioException: ${e.message}");
      rethrow;
    } catch (e) {
      log("General Exception: ${e.toString()}");
      throw Exception("General Error: ${e.toString()}");
    }
  }

  Future<Response> login(
      {required String email, required String password}) async {
    final url = "${Api.baseUrl}user/login";
    try {
      final formData = {
        "email": email,
        "password": password,
      };
      final response = await dio.post(
        url,
        data: formData,
      );
      bool status = response.data['success'];
      log("Status: $status");
      log("Response data: ${response.data}");
      if (response.data['success']) {
        log("Login successful");
        ApiToken.token = response.data['token'];
        writeTokenAccess(ApiToken.token);
        return response;
      } else {
        return response;
      }
    } on DioException catch (e) {
      log("DioException: ${e.toString()}");
      rethrow;
    } catch (e) {
      log("General Exception: ${e.toString()}");
      throw Exception("General Exception: ${e.toString()}");
    }
  }
}
