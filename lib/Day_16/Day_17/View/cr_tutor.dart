import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_16/Day_17/Database/tutor_controller.dart';
import 'package:joshuaproject/Day_16/Day_17/models/tutor_model.dart';
import 'package:joshuaproject/Day_16/Day_17/utils/decoration_form.dart';
import 'package:joshuaproject/Extansion/navigator.dart';

class CRTutorScreenDay17 extends StatefulWidget {
  CRTutorScreenDay17({super.key});

  State<CRTutorScreenDay17> createState() => _TutorScreenState();
}

class _TutorScreenState extends State<CRTutorScreenDay17> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nomorController = TextEditingController();
  final TextEditingController mapelController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40),
              TextFormField(
                controller: namaController,
                decoration: decorationConstant(
                  hintText: "Masukkan Nama Tutor",
                  // color: Colors.red,
                ),
              ),
              SizedBox(height: 24),
              TextFormField(
                controller: nomorController,
                decoration: decorationConstant(
                  hintText: "Masukkan Nomor HP Tutor",
                ),
              ),

              SizedBox(height: 24),
              TextFormField(
                controller: mapelController,
                decoration: decorationConstant(
                  hintText: "Masukkan Mata Pelajaran",
                ),
              ),

              SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text("Daftar"),
                  onPressed: () {
                    if (namaController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Nama belum di isi")),
                      );
                      return;
                    }
                    if (nomorController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Nomor HP belum di isi")),
                      );
                      return;
                    }

                    if (nomorController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Mata pelajaran belum di isi")),
                      );
                      return;
                    }

                    TutorController.registerTutor(
                      TutorModel(
                        nama: namaController.text,
                        noHP: nomorController.text,
                        mataPelajaran: mapelController.text,
                      ),
                    );
                    namaController.clear();
                    nomorController.clear();
                    mapelController.clear();
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 24),
              SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    context.push(CRTutorScreenDay17());
                  },
                  child: Text("Lihat Data Tutor"),
                ),
              ),
              SizedBox(height: 24),
              Row(children: [Text("Data Tutor")]),
              SizedBox(height: 12),
              tutorWidget(),
              // siswaWidget(),
            ],
          ),
        ),
      ),
    );
  }

  FutureBuilder<List<TutorModel>> tutorWidget() {
    return FutureBuilder<List<TutorModel>>(
      future: TutorController.getAllTutor(),

      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }
        final DataTutor = snapshot.data as List<TutorModel>;
        return ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: DataTutor.length,
          itemBuilder: (BuildContext context, int index) {
            final items = DataTutor[index];
            return ListTile(
              title: Text(items.nama),
              subtitle: Text(items.mataPelajaran),
            );
          },
        );
      },
    );
  }
}
