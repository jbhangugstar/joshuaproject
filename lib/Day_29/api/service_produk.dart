import 'package:http/http.dart' as http;
import '../models/produk_model.dart';

class ProductService {
  static Future<List<DataProduk>> fetchProducts() async {
    final response = await http.get(
      Uri.parse('https://fakestoreapi.com/products'),
    );

    if (response.statusCode == 200) {
      return dataProdukFromJson(response.body);
    } else {
      throw Exception('Gagal mengambil data produk');
    }
  }
}
