import 'package:flutter/material.dart';

class Tugas3 extends StatelessWidget {
  const Tugas3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Brilliant Education", style: TextStyle(fontSize: 30)),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 179, 9, 111),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("FORM PENDAFTARAN TUTOR"),
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

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("DAFTAR SEKARANG "),
              ),
            ),

            Container(
              width: 600,
              height: 600,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "MATA PELAJARAN",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 194, 26, 180),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/buku pelajaran.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "MATEMATIKA",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 194, 26, 180),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/buku pelajaran.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "BAHASA INGGRIS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 194, 26, 180),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/buku pelajaran.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "BAHASA KOREA",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 194, 26, 180),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/buku pelajaran.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "APP DEVELOPER",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 194, 26, 180),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/buku pelajaran.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "MANAJEMEN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 194, 26, 180),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(12),
                            child: Image.asset(
                              "assets/images/buku pelajaran.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "DESAIN GRAFIS",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
