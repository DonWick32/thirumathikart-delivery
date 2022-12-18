import 'package:get_storage/get_storage.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:thirumathikart_seller/constants/storageconstants.dart';

class StorageServices extends GetxService {
  late GetStorage storage;

  Future<StorageServices> initStorage() async {
    await GetStorage.init();
    storage = GetStorage();
    return this;
  }

  void storeJWT(String jwt) async =>
      await storage.write(StorageConstants.jwt, jwt);

  String? retriveJWT() => storage.read(StorageConstants.jwt);
}
