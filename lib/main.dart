import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'binding/home_binding.dart';
import 'binding/home_child_binding.dart';
import 'home_page.dart';
import 'splash_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    defaultTransition: Transition.fade,
    getPages: [
      GetPage(
        name: '/splash',
        page: () => SplashScreen(),
      ),
      GetPage(
        name: '/browse',
        page: () => HomePage(0),
        bindings: [HomeBinding(),HomeChildBinding()],
      ),
      GetPage(
        name: '/history',
        page: () => HomePage(1),
        binding: HomeBinding(),
      ),
      GetPage(
        name: '/settings',
        page: () => HomePage(2),
        binding: HomeBinding(),
      ),
    ],
  ));
}
