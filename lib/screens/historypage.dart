import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../conmtroller/home_controller.dart';

class HistoryPage extends StatefulWidget {

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>  with WidgetsBindingObserver {


  @override
  void initState() {
    super.initState();
    print("_HistoryPageState Current state = initState");

    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print("_HistoryPageState Current state = $state");
  }

  @override
  void dispose() {
    print("_HistoryPageState Current state = dispose");

    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('HistoryPage'),
        leading: IconButton(
          onPressed: () {
            homeController.currentIndex.value =0;
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Center(
        child: Container(
          child: Text('HistoryPage'),
        ),
      ),
    );
  }
}
