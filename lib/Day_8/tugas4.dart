import 'package:flutter/material.dart';

class Tugas4 extends StatelessWidget {
  Tugas4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Brilliant Education",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),

      body: ListView(
        children: [
          Text(
            "FORM PENDAFTARAN TUTOR",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),

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

          Divider(),
          SizedBox(height: 30),
          Text(
            "DAFTAR TUTOR",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          // Tutor 1
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purpleAccent,
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.school),
              ),
              title: Text("Adam"),
              subtitle: Text(" Tutor App Developer"),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              child: Icon(Icons.school),
            ),
            title: Text("Wildan Malaki"),
            subtitle: Text(" Tutor Biologi"),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.school),
            ),
            title: Text("Devina Sandra Dewi"),
            subtitle: Text(" Tutor Komunikasi"),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.school),
            ),
            title: Text("Angel"),
            subtitle: Text(" Tutor Bahasa Korea"),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Icon(Icons.school),
            ),
            title: Text("Clara"),
            subtitle: Text("Tutor Manajemen"),
          ),
        ],
      ),
    );
  }
}
