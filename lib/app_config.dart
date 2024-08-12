import 'dart:convert';
import 'dart:developer';
import 'package:flutter/services.dart';
import 'package:ticket/common/model/api_base_url.dart';


class AppConfig {
  final ApiBaseUrlModel? apiBaseUrlModel;
  AppConfig({this.apiBaseUrlModel});

  Future<ApiBaseUrlModel> forEnvironment(String? env) async {
    env = env ?? 'dev';
    log(env);
    final contents = await rootBundle.loadString(
      'assets/env/$env.json',
    );
    final decodeJson = json.decode(contents);
    return ApiBaseUrlModel.fromJson(decodeJson);
  }
}
