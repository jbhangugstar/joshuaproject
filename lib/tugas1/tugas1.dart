import 'package:flutter/material.dart';

class Tugas1Flutter extends StatelessWidget {
  const Tugas1Flutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Saya"),
        centerTitle: true,
        backgroundColor: Color(0xff0AC4E0),
      ),
      body: Column(
        children: [
          Text("Joshua Brilliant Bintoro"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.location_on), Text("Jakarta")],
          ),
          Text("Seseorang yang sedang berproses untuk belajar"),
        ],
      ),
    );
  }
}
