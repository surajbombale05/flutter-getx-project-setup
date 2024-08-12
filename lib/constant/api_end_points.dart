// ignore_for_file: unnecessary_brace_in_string_interps

import 'package:ticket/common/model/api_base_url.dart';


class ApiEndpoints {
  ApiBaseUrlModel? apiBaseUrlModel;

  ApiEndpoints({this.apiBaseUrlModel}) {
    if (apiBaseUrlModel == null) {}
  }

  late String baseUrl = apiBaseUrlModel?.baseUrl ?? "";
  late String authBaseUrl = apiBaseUrlModel?.authBaseUrl ?? "";
  late String gateWayBaseUrl = apiBaseUrlModel?.gatewayUrl ?? "";

  late String getAllCategory = "${baseUrl}org/";
}
