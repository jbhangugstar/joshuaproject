import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_16/Day_17/Database/tutor_controller.dart';
import 'package:joshuaproject/Day_16/Day_17/models/tutor_model.dart';

class TutorScreen extends StatefulWidget {
  const TutorScreen({super.key});

  @override
  State<TutorScreen> createState() => _TutorScreenState();
}

class _TutorScreenState extends State<TutorScreen> {
  late List<TutorModel> dataTutor = [];

  void initState() {
    super.initState();
    getDataTutor();
  }

  Future<void> getDataTutor() async {
    await Future.delayed(Duration(seconds: 3));
    dataTutor = await TutorController.getAllTutor();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dataTutor.isEmpty || dataTutor == []
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              shrinkWrap: true,
              itemCount: dataTutor.length,
              itemBuilder: (BuildContext context, int index) {
                final items = dataTutor[index];
                return ListTile(
                  title: Text(items.nama),
                  subtitle: Text(items.mataPelajaran),
                );
              },
            ),
    );
  }
}
