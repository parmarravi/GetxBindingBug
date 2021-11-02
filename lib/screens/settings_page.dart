import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        leading: BackButton(onPressed: () {
          Get.back();
        }),
      ),
      body: Center(
        child: Container(
          child: Text('Settings'),
        ),
      ),
    );
  }
}
