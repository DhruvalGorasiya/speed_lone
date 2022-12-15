import 'package:get/get.dart';
import 'package:lone_counter/servics/firebase_servics.dart';

class RedeemedController extends GetxController{
RxList data = [].obs;

Future<void> getData() async {
  data.value = await FirebaseServices.getData();
}
@override
  void onInit() {
    super.onInit();
    getData();
    print(data.length);
    update();
  }
}
