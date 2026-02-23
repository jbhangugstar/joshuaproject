import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_11/tugas6_homepage.dart';
import 'package:joshuaproject/Day_11/tugas6_homepage2.dart';
import 'package:joshuaproject/Extansion/navigator.dart';

class Tugas6Login extends StatelessWidget {
  const Tugas6Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 109, 26, 124),
      appBar: AppBar(
        title: Text(
          "Brilliant Education",
          style: TextStyle(
            fontSize: 25,
            color: const Color.fromARGB(255, 223, 221, 226),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,

        backgroundColor: const Color.fromARGB(255, 129, 21, 113),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(50),
              child: Center(
                child: Image.asset("assets/images/logo.jpeg", height: 150),
              ),
            ),

            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, color: Colors.white),
                  hintText: "Email",
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white),
              ),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, color: Colors.white),
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 18),
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  context.push(Tugas6HomePage2());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0xFF0A2A5A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                    context.push(Tugas6Homepage());
                  },
                  child: const Text(
                    "Buat Akun",
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
