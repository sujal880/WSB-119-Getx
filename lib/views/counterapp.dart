import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wsb_119_statemanagement/controllers/countercontroller.dart';

class CounterApp extends StatelessWidget {
  final counter=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx((){
        return   Center(child: Text(counter.count.toString()));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         counter.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
