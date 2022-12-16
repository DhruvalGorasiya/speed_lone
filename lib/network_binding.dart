import 'package:get/get.dart';
import 'package:lone_counter/controller/connectivity_controller.dart';
class NetworkBinding extends Bindings{
  // dependence injection attach our class.
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<InternetConnectivity>(() => InternetConnectivity());
  }
}