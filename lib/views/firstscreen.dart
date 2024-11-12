import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wsb_119_statemanagement/views/secondscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
            Get.defaultDialog(title: "WSLC-119");
            },
            child: Text("Next Page")),
      ),
    );
  }
}
