import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wsb_119_statemanagement/controllers/dbcontroller.dart';
import 'package:wsb_119_statemanagement/views/addnotes.dart';

class NotesApp extends StatelessWidget {
  final DbController dbController = Get.put(DbController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes App"),
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${index + 1}"),
              title: Text(dbController.notes[index].title),
              subtitle: Text(dbController.notes[index].desc),
            );
          },
          itemCount: dbController.notes.length,
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddDataScreen());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
