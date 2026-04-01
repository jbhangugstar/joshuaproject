import 'package:flutter/material.dart';
import '../api/service_produk.dart';
import '../models/produk_model.dart';
import '../view/produk_detail_screen.dart';
import '../view/product_card.dart';

class Tugas14Screen extends StatefulWidget {
  const Tugas14Screen({super.key});

  @override
  State<Tugas14Screen> createState() => _Tugas14ScreenState();
}

class _Tugas14ScreenState extends State<Tugas14Screen> {
  late Future<List<DataProduk>> futureProduk;
  List<DataProduk> allProduk = [];
  List<DataProduk> filteredProduk = [];
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    futureProduk = ProductService.fetchProducts().then((list) {
      allProduk = list;
      filteredProduk = List.from(list);
      return list;
    });
  }

  void filterSearch(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredProduk = List.from(allProduk);
      });
      return;
    }

    final result = allProduk.where((produk) {
      final title = produk.title?.toLowerCase() ?? "";
      final category = produk.category?.toLowerCase() ?? "";
      return title.contains(query.toLowerCase()) ||
          category.contains(query.toLowerCase());
    }).toList();

    setState(() {
      filteredProduk = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FC),
      appBar: AppBar(
        title: const Text(
          "Daftar Produk",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xffF7F9FC),
        foregroundColor: const Color(0xff1B1E28),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: Icon(Icons.shopping_bag_outlined),
          ),
        ],
      ),
      body: FutureBuilder<List<DataProduk>>(
        future: futureProduk,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text("Terjadi kesalahan: ${snapshot.error}"));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("Data produk kosong"));
          }

          if (filteredProduk.isEmpty && snapshot.data != null) {
            filteredProduk = List.from(snapshot.data!);
          }

          return Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: searchController,
                    onChanged: filterSearch,
                    decoration: const InputDecoration(
                      hintText: "Cari produk...",
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                Expanded(
                  child: ListView.builder(
                    itemCount: filteredProduk.length,
                    itemBuilder: (context, index) {
                      print('Building item $index');
                      final produk = filteredProduk[index];
                      return ProductCard(
                        produk: produk,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  ProductDetailScreen(produk: produk),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
