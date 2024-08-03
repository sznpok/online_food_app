import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:online_food_project/constant/constant.dart';
import 'package:online_food_project/core/api.dart';

class GetMenuRepo {
  Dio dio = Dio();

  Future<Response> getMenu() async {
    final url = "${Api.baseUrl}menu";
    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            "Authorization": "Bearer ${ApiToken.token}",
          },
        ),
      );
      bool status = response.data['success'];
      log("Status: $status");
      log("Response data: ${response.data}");
      if (response.data['success']) {
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
