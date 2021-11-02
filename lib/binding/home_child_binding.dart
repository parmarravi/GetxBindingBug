import 'package:get/get.dart';
import 'package:getxbottombar/conmtroller/home_child_controller.dart';

import '../conmtroller/home_controller.dart';

class HomeChildBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeChildController());
  }
}
