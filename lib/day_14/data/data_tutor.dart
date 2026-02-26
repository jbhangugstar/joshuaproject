import 'package:joshuaproject/day_14/models/pokemon_model.dart';

class DataTutor {
  final String name;
  final String bidangstudi;
  final String hobi;
  final String pendidikan;
  final String imageUrl;

  DataTutor({
    required this.name,
    required this.bidangstudi,
    required this.hobi,
    required this.pendidikan,
    required this.imageUrl,
  });
}

final List<DataTutor> tutorList = [
  DataTutor(
    name: "Keisyha Wijaya Salim",
    bidangstudi: "Bisnis",
    hobi: "Nonton Drakor",
    pendidikan: "Sarjana Manajemen",
    imageUrl:
        "https://media.istockphoto.com/id/1473839183/id/foto/wanita-muda-asia-yang-tersenyum-cantik-berusia-sekitar-25-tahun-dengan-kemeja-cokelat-wanita.jpg",
  ),
  DataTutor(
    name: "Andi Pratama",
    bidangstudi: "Akuntansi",
    hobi: "Membaca Buku",
    pendidikan: "Sarjana Akuntansi",
    imageUrl:
        "https://www.quipper.com/id/blog/wp-content/uploads/2022/12/pexels-yan-krukov-8617763.jpg",
  ),
  DataTutor(
    name: "Maria Olivia",
    bidangstudi: "Manajemen",
    hobi: "Olahraga Pagi",
    pendidikan: "Magister Manajemen",
    imageUrl:
        "https://akcdn.detik.net.id/visual/2025/12/19/ilustrasi-awet-muda-1766148279919_11.jpeg?w=720&q=90",
  ),
];
