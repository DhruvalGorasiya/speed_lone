import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class InternetConnectivity extends GetxController {
  int connectionType = 0;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription _streamSubscription;

  @override
  void onInit() {
    super.onInit();
    getConnectionType();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(updateState);
  }

  ConnectivityResult? connectivityResult;

  Future<void> getConnectionType() async {
    try {
      connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (e) {
      print(e);
    }
    return updateState(connectivityResult!);
  }

  updateState(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionType = 1;
        Get.back(closeOverlays: true);
        update();
        break;
      case ConnectivityResult.mobile:
        connectionType = 2;
        Get.back(closeOverlays: true);
        update();
        break;
      case ConnectivityResult.none:
        connectionType = 0;
        Get.defaultDialog(
          title: "Check your Internet Connection", barrierDismissible: false,
        );
        update();
        break;
      default:
        Get.snackbar('Network Error', 'Failed to get Network Status');
        break;
    }
    print(connectionType);
  }

  @override
  void onClose() {
    super.onClose();
    _streamSubscription.cancel();
  }
}
