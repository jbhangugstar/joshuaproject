import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_16/Day_17_18/Database/tutor_controller.dart';
import 'package:joshuaproject/Day_16/Day_17_18/models/tutor_model.dart';
import 'package:joshuaproject/Day_16/Day_17_18/utils/decoration_form.dart';
import 'package:joshuaproject/Extansion/navigator.dart';

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
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text(
            "BRILLIANT EDUCATION TUTOR",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 117, 41, 133),
      ),
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
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await showEditDialog(context, items);
                          dataTutor = await TutorController.getAllTutor();
                          setState(() {});
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () async {
                          await showDeleteDialog(context, items.id!);
                          dataTutor = await TutorController.getAllTutor();
                          setState(() {});
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }

  Future<void> showEditDialog(BuildContext context, TutorModel items) async {
    final namaController = TextEditingController(text: items.nama);
    final noHPController = TextEditingController(text: items.noHP);
    final mapelController = TextEditingController(text: items.mataPelajaran);

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Edit Tutor"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: namaController,
                decoration: decorationConstant(hintText: "Nama"),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: noHPController,
                decoration: decorationConstant(hintText: "Nomor HP"),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: mapelController,
                decoration: decorationConstant(hintText: "Mata Pelajaran"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () async {
                if (items.id == null) {
                  return;
                }
                await TutorController.updateTutor(
                  TutorModel(
                    id: items.id,
                    nama: namaController.text,
                    noHP: noHPController.text,
                    mataPelajaran: mapelController.text,
                  ),
                );
                context.pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Tutor berhasil di update")),
                );
              },
              child: Text("Simpan"),
            ),
          ],
        );
      },
    );
  }

  Future<void> showDeleteDialog(BuildContext context, int id) async {
    final confirm = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Konfirmasi"),
          content: Text("Apakah anda yakin ingin menghapus data tutor ini?"),
          actions: [
            TextButton(
              onPressed: () {
                context.pop(false);
              },
              child: Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () async {
                context.pop(true);
              },
              child: Text("Hapus"),
            ),
          ],
        );
      },
    );

    if (confirm == true) {
      await TutorController.deleteTutor(id);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Tutor berhasil dihapus")));
      setState(() {});
    }
  }
}
