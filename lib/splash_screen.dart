import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding/home_binding.dart';
import 'binding/home_child_binding.dart';
import 'conmtroller/home_child_controller.dart';
import 'conmtroller/home_controller.dart';
import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(title: Text('Spalsh')),
        body: Center(child: Container(
          child: ElevatedButton(child: Text("GO HOME"), onPressed: (){
            Get.to(HomePage(0), binding: BindingsBuilder(() {
              Get.put(HomeController());
              Get.put(HomeChildController());
            }));


            // Get.to( HomePage(0),binding: BindingsBuilder.put(() {
            //   Get.lazyPut(() => HomeController());
            //   Get.lazyPut(() => HomeChildController());
            // }));
          },),
        )));
  }
}
