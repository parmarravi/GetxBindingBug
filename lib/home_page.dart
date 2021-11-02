import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'conmtroller/home_controller.dart';

class HomePage extends GetView<HomeController> {

  HomePage(int index) {
    controller.changePage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: () async {
          if (controller.currentIndex.value != 0) {
            controller.changePage(0);
            return false;
          } else {
            return showExitDialog(context);
          }
        },
        child: Scaffold(
          body: controller.currentPage,
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Diagnose',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'History',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: controller.currentIndex.value,
            selectedItemColor: Colors.pink,
            onTap: controller.changePage,
          ),
        ),
      ),
    );
  }

  Future<bool> showExitDialog(BuildContext context) async {
    bool navigateState = false;
    await showDialog(
      context: context,
      barrierColor: Colors.black87,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
          'Do you want to exit an App',
          style: TextStyle(color: Colors.black),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
              navigateState = false;
            },
            child: const Text('No', style: TextStyle(color: Colors.black),
          ),),
          TextButton(
        onPressed: () {
          Navigator.of(context).pop(true);
          navigateState = true;
        },
        child: const Text('Yes'),
      ),
        ],
      ),
    );
    return navigateState;
  }
}



