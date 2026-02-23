import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_11/tugas6.dart';
import 'package:joshuaproject/Extansion/navigator.dart';

class Tugas6Homepage extends StatelessWidget {
  const Tugas6Homepage({super.key});

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

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              "FORM PENDAFTARAN TUTOR",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),

            TextField(
              decoration: InputDecoration(
                labelText: "NAMA LENGKAP : ",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "NOMOR HP : ",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "EMAIL : ",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "BIDANG STUDI : ",
                border: OutlineInputBorder(),
              ),
            ),

            Column(
              children: [
                const SizedBox(height: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 20,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    context.pushReplacement(Tugas6Login());
                  },
                  child: const Text(
                    "Daftar",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
