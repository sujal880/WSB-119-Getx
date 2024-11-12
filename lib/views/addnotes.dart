import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wsb_119_statemanagement/controllers/dbcontroller.dart';
import 'package:wsb_119_statemanagement/models/notesmodel.dart';
import 'package:wsb_119_statemanagement/views/widgets/uihelper.dart';

class AddDataScreen extends StatelessWidget {
  final DbController dbController = Get.put(DbController());
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomTextField(controller: titleController, text: "Title"),
          UiHelper.CustomTextField(
              controller: descController, text: "Description"),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Save"))
        ],
      ),
    );
  }

  addData(String title, String desc) {
    if (title == "" || desc == "") {
      return log("Enter Title And Description");
    } else {
      final newnote = NotesModel(title: title, desc: desc);
      dbController.addNotes(newnote);
      log("Data Inserted");
    }
  }
}
