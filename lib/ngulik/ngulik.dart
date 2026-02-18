import 'package:flutter/material.dart';

class NgulikDart extends StatelessWidget {
  const NgulikDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0AC4E0),
        centerTitle: true,
        title: Text("RUANG GURU"),
        titleTextStyle: TextStyle(fontSize: 20),
      ),

      body: Column(
        children: [
          Container(
            color: Colors.blueAccent,
            width: 100,
            height: 50,
            child: Text("Belajar", style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}
