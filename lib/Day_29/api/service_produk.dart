import 'package:http/http.dart' as http;
import '../models/produk_model.dart';

class ProductService {
  static Future<List<DataProduk>> fetchProducts() async {
    try {
      final response = await http.get(
        Uri.parse('https://fakestoreapi.com/products'),
      );

      if (response.statusCode == 200) {
        return dataProdukFromJson(response.body);
      } else {
        // fallback ke dummy saat status kode tidak 200
        return _getDummyProducts();
      }
    } catch (e) {
      // fallback saat error network / parsing
      return _getDummyProducts();
    }
  }

  static List<DataProduk> _getDummyProducts() {
    print('Returning dummy products');
    return [
      DataProduk(
        id: 1,
        title: "Produk Dummy 1",
        price: 10.0,
        description: "Deskripsi produk dummy 1",
        category: "Elektronik",
        image: "https://via.placeholder.com/150",
        rating: Rating(rate: 4.5, count: 10),
      ),
      DataProduk(
        id: 2,
        title: "Produk Dummy 2",
        price: 20.0,
        description: "Deskripsi produk dummy 2",
        category: "Pakaian",
        image: "https://via.placeholder.com/150",
        rating: Rating(rate: 3.8, count: 5),
      ),
      // Tambahkan lebih banyak jika perlu
    ];
  }
}
