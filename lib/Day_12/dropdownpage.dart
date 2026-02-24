import 'package:flutter/material.dart';

class DropDownPage extends StatefulWidget {
  const DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  String? selectedItem; // nullable supaya awalnya kosong

  final List<String> categories = [
    "Elektronik",
    "Pakaian",
    "Makanan",
    "Lainnya",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pilih Kategori Produk")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              hint: const Text("Pilih Kategori"),
              value: selectedItem,
              items: categories.map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedItem = value; // ✅ ini yang benar
                });
              },
            ),

            const SizedBox(height: 30),

            if (selectedItem != null)
              Text(
                "Anda memilih kategori: $selectedItem",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
