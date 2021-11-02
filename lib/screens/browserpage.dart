

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxbottombar/conmtroller/home_child_controller.dart';

class BrowsePage extends StatefulWidget {


  BrowsePage();

  @override
  _BrowsePageState createState() {
    return _BrowsePageState();
  }

}

class _BrowsePageState extends State<BrowsePage> with WidgetsBindingObserver {

  @override
  void initState() {
    super.initState();
    print("Current state = initState");

    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print("Current state = $state");
  }

  @override
  void dispose() {
    print("Current state = dispose");

    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeChildController = Get.find<HomeChildController>();
    print("TEST:${homeChildController.abc}");
    return Scaffold(
      appBar: AppBar(title: Text('Browse')),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Browse'),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                  print("TEST:${homeChildController.abc}");

                },
                splashColor: Colors.blueGrey,
                child: Text('Go to History',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
