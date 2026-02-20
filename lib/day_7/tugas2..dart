import 'package:flutter/material.dart';

class Day7Screen extends StatelessWidget {
  const Day7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BRILLIANT EDUCATION"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 188, 10, 224),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // =========================
            // 1. Identitas Utama
            // =========================
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Joshua Brilliant",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            // =========================
            // 2. Detail Kontak
            // =========================
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.email),
                    SizedBox(width: 10), // WAJIB SizedBox
                    Text("joshua@email.com", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),

            // =========================
            // 3. Informasi Pendukung
            // =========================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: const [
                  Icon(Icons.phone),
                  SizedBox(width: 8),
                  Text("0812-3456-7890"),
                  Spacer(), // Dorong ke kanan
                  Icon(Icons.location_on),
                  SizedBox(width: 8),
                  Text("Jakarta"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // =========================
            // 4. Statistik Horizontal
            // =========================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "120",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Siswa"),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(left: 8),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        children: [
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Rating"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // =========================
            // 5. Deskripsi Naratif
            // =========================
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 105, 64, 255),
                ),
                child: Text(
                  "Joshua adalah Founder Brilliant Education dan pengembang aplikasi. Ia telah memulai mimpinya sejak ia belajar app developer di PPKD.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),

            SizedBox(height: 20),
            Container(
              child: Center(
                child: Image.asset("assets/images/anak_belajar.jpg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
