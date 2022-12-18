import 'package:get/get_connect/connect.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

class ApiServices extends GetxService {
  late ApiManager api;

  Future<ApiServices> initApi() async {
    api = ApiManager();
    return this;
  }
}

class ApiManager extends GetConnect {
  @override
  void onInit() {
    httpClient.timeout = const Duration(seconds: 10);
  }

  var headers = {
    'Accept': 'application/json',
    'Access-Control-Allow-Origin': '*',
  };
}
