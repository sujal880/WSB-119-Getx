import 'package:get/get.dart';
import 'package:wsb_119_statemanagement/database/dbhelper.dart';
import 'package:wsb_119_statemanagement/models/notesmodel.dart';

class DbController extends GetxController {
  final DbHelper dbHelper = Get.put(DbHelper());
  var notes = <NotesModel>[].obs;

  Future<void> addNotes(NotesModel notesmodel) async {
    await dbHelper.addNotes(notesmodel);
    notes.add(notesmodel);
  }

  Future<void> getNotes() async {
    await dbHelper.initDb();
    notes.assignAll(await dbHelper.getNotes());
  }
}
