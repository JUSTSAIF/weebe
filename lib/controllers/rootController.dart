import 'package:get/get.dart';
import 'package:connectivity/connectivity.dart';

class rootController extends GetxController {
  var subscription;
  bool? networkStatus;
  @override
  void onInit() {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        networkStatus = false;
        Get.toNamed('/networkErr');
      } else {
        networkStatus = true;
        Get.back();
      }
    });
    super.onInit();
  }

  @override
  dispose() {
    super.dispose();
    subscription.cancel();
  }

  bool checkNetwork() {
    return true;
  }
}
