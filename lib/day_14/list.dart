import 'package:flutter/material.dart';

class ListViewBuilderDay14List extends StatelessWidget {
  ListViewBuilderDay14List({super.key});
  final List<String> dataProduk = [
    "Matematika",
    "Bisnis",
    "Bahasa Korea",
    "Manajemen",
    "Bahasa Inggris",
    "App Developer",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataProduk.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            height: 40,
            color: const Color.fromARGB(255, 216, 77, 170),
            child: Text("$index : ${dataProduk[index]}"),
          ),
        );
      },
    );
  }
}
