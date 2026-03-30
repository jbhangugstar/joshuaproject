import 'package:flutter/material.dart';
import '../models/produk_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final DataProduk produk;

  const ProductDetailScreen({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FC),
      appBar: AppBar(
        title: const Text("Detail Produk"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff1B1E28),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 280,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Image.network(
                produk.image ?? "",
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.image_not_supported_outlined,
                    size: 80,
                  );
                },
              ),
            ),
            const SizedBox(height: 24),

            Text(
              produk.title ?? "Tanpa Judul",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xff1B1E28),
              ),
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                const Icon(Icons.star_rounded, color: Colors.amber),
                const SizedBox(width: 4),
                Text(
                  "${produk.rating?.rate ?? 0}",
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(width: 8),
                Text(
                  "(${produk.rating?.count ?? 0} ulasan)",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
            const SizedBox(height: 18),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xffEAF2FB),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                produk.category ?? "-",
                style: const TextStyle(
                  color: Color(0xff0F4C81),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Text(
              "\$${produk.price?.toStringAsFixed(2) ?? "0.00"}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff0F4C81),
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              "Deskripsi Produk",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff1B1E28),
              ),
            ),
            const SizedBox(height: 10),

            Text(
              produk.description ?? "Tidak ada deskripsi.",
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff0F4C81),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Beli Sekarang",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
