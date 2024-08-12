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

  late String getAllCategory = "${baseUrl}category/all/category";
  late String getProductByGroupId = "${baseUrl}products/all/group";
  late String storeListGet =
      "${baseUrl}/bussiness/all/getByGroupId/1703228300417";
  late String getAllProducts = "products/all/products"; 
  late String sendOtp="${gateWayBaseUrl}authgw/sendotp";
  late String verifyOtp="${authBaseUrl}auth/validateOtp";
  late String refreshToken="${gateWayBaseUrl}authgw/refresh-token";
        


  late String addCategories = "${baseUrl}category/";
  late String getCategories = "${baseUrl}category/all/getByGroupId/";

}
