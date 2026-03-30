import 'package:flutter/material.dart';

class Tugas6HomePage2 extends StatelessWidget {
  const Tugas6HomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 194, 201),
      appBar: AppBar(
        title: Text(
          "Brilliant Education",
          style: TextStyle(
            fontSize: 25,
            color: const Color.fromARGB(255, 176, 173, 180),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

        backgroundColor: Color.fromARGB(255, 129, 21, 113),
      ),

      body: Column(
        children: [
          Center(
            child: Text(
              " Welcome to Home Page",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
