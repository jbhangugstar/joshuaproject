import 'package:flutter/material.dart';

class ListMapPageTugas9 extends StatelessWidget {
  ListMapPageTugas9({super.key}); // jangan pakai const

  final List<Map<String, dynamic>> dataUser = [
    {
      "Nama Tutor": "Keisyha Wijaya Salim",
      "Bidang Studi": "Bisnis",
      "Hobi": "Nonton Drakor",
      "Pendidikan": "Sarjana Manajemen",
      "foto":
          "https://media.istockphoto.com/id/1473839183/id/foto/wanita-muda-asia-yang-tersenyum-cantik-berusia-sekitar-25-tahun-dengan-kemeja-cokelat-wanita.jpg?s=1024x1024&w=is&k=20&c=_bMd70VZOmRHrmXRTIIaFlpYAyrqgEeZFD7J4aMqvtM",
    },
    {
      "Nama tutor": "Andi Pratama",
      "Bidang Studi": "Akuntansi",
      "Hobi": "Membaca Buku",
      "Pendidikan": "Sarjana Akuntansi",
      "foto":
          "https://www.quipper.com/id/blog/wp-content/uploads/2022/12/pexels-yan-krukov-8617763.jpg",
    },
    {
      "Nama Tutor": "Maria Olivia",
      "Bidang Studi": "Manajemen",
      "Hobi": "Traveling",
      "Pendidikan": "Magister Manajemen",
      "foto":
          "https://akcdn.detik.net.id/visual/2025/12/19/ilustrasi-awet-muda-1766148279919_11.jpeg?w=720&q=90",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Tutor")),
      body: ListView.builder(
        itemCount: dataUser.length,
        itemBuilder: (context, index) {
          final tutor = dataUser[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tutor["NAMA TUTOR"],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text("Bidang Studi: ${tutor["Bidang Studi"]}"),
                  Text("Hobi: ${tutor["Hobi"]}"),
                  Text("Pendidikan: ${tutor["Pendidikan"]}"),
                  Image.network(tutor["foto"] ?? ""),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
