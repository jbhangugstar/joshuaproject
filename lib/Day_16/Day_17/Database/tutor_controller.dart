import 'package:joshuaproject/Day_16/Day_17/Database/sqflite.dart';
import 'package:joshuaproject/Day_16/Day_17/models/tutor_model.dart';

class TutorController {
  static Future<void> registerTutor(TutorModel tutor) async {
    final dbs = await DBHelper.db();
    await dbs.insert('tutor', tutor.toMap());
    print(tutor.toMap());
  }

  static Future<List<TutorModel>> getAllTutor() async {
    final dbs = await DBHelper.db();
    final List<Map<String, dynamic>> results = await dbs.query("tutor");
    print(results.map((e) => TutorModel.fromMap(e)).toList());
    return results.map((e) => TutorModel.fromMap(e)).toList();
  }
}
