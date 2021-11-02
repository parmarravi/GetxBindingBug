import 'package:get/get.dart';

class HomeChildController extends GetxController {

  var abc = "test";

  @override
  void onInit() {
    super.onInit();
    print(abc);
  }
}