import 'dart:developer';

import 'package:bookie_app/core/constants/app_constants.dart';
import 'package:bookie_app/core/services/dio_provider.dart';
import 'package:bookie_app/features/auth/data/model/request/register_params.dart';
import 'package:bookie_app/features/auth/data/model/response/user_response/user_response.dart';

class AuthRepo {
  static Future<UserResponse?> register(RegisterParams params) async {
    try {
      var response = await DioProvider.post(
        endPoint: AppConstants.register,
        data: params.toJson(),
      );
      // log(response.data.toString());
      if (response.statusCode == 201) {
        return UserResponse.fromJson(response.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log('Error during registration: $e');
    }
    return null;
  }
  static Future<UserResponse?> login(RegisterParams params) async {
    try {
      var response = await DioProvider.post(
        endPoint: AppConstants.login,
        data: params.toJson(),
      );
      // log(response.data.toString());
      if (response.statusCode == 200) {
        log(response.data.toString());
        return UserResponse.fromJson(response.data);
      } else {
        return null;
      }
    } on Exception catch (e) {
      log('Error during registration: $e');
    }
    return null;
  }
}
