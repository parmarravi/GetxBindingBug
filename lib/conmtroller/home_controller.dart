import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottombar/screens/settings_page.dart';

import '../screens/browserpage.dart';
import '../screens/historypage.dart';

class HomeController extends GetxController  with WidgetsBindingObserver {

  static HomeController get to => Get.find();

  final currentIndex = 0.obs;

  final pages = <Widget>[
    BrowsePage(),
    HistoryPage(),
    SettingsPage(),
  ];

  Widget get currentPage => pages[currentIndex()];



  @override
  void onInit() {
    super.onInit();
    print("onIniteHomeController ");
    WidgetsBinding.instance!.addObserver(this);

  }

  @override
  void refresh() {
    super.refresh();
    print("refreshHomeController ");

  }

  @override
  void dispose() {
    super.dispose();
    print("disposeHomeController ");
  }


  @override
  onClose() {
    super.onClose();
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('state = $state ${currentIndex} ');
  }

  changePage(int index) {
    currentIndex.value = index;
  }
}