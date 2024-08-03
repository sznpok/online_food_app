import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:online_food_project/core/api.dart';

class UserRegisterRepo {
  Dio dio = Dio();

  Future<Response> register(
      {String? name,
      String? email,
      String? password,
      String? address,
      String? phoneNumber}) async {
    String url = "${Api.baseUrl}user/register";
    try {
      final formData = FormData.fromMap({
        'name': name,
        'email': email,
        'password': password,
        'address': address,
        "phoneNumber": phoneNumber
      });
      final response = await dio.post(
        url,
        data: formData,
        options: Options(
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );
      if (response.statusCode == 200) {
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
}
