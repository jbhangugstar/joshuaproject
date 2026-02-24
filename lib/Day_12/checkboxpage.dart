import 'package:flutter/material.dart';

class Tugas7Checkbox extends StatefulWidget {
  const Tugas7Checkbox({super.key});

  @override
  State<Tugas7Checkbox> createState() => _Tugas7CheckboxState();
}

class _Tugas7CheckboxState extends State<Tugas7Checkbox> {
  void onTapItem(int index) {
    setState(() {});

    Navigator.pop(context);
    //untuk menutup drawer

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Tugas7Checkbox()),
      );
    }
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Syarat & Ketentuan")),
      body: Column(
        children: [
          CheckboxListTile(
            value: isChecked,
            title: const Text("Saya menyetujui semua persyaratan yang berlaku"),
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text(
            isChecked
                ? "Lanjutkan pendaftaran diperbolehkan"
                : "Anda belum bisa melanjutkan",
          ),
        ],
      ),
    );
  }
}
