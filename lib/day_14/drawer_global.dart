import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_15/tugas10.dart';
import 'package:joshuaproject/Day_16/Day_16/View/login_screen.dart';
import 'package:joshuaproject/day_14/list.dart';
import 'package:joshuaproject/day_14/list_map.dart';
import 'package:joshuaproject/day_14/model_tutor.dart';

class DrawerGlobalTugas9 extends StatefulWidget {
  const DrawerGlobalTugas9({super.key});

  @override
  State<DrawerGlobalTugas9> createState() => _DrawerGlobalState();
}

class _DrawerGlobalState extends State<DrawerGlobalTugas9> {
  int _currentIndex = 0;

  void ontapItemDrawer(int index) {
    _currentIndex = index;
    setState(() {});
    Navigator.pop(context);
  }

  static List<Widget> listWidget = [
    ListViewBuilderDay14List(),
    ListMapPageTugas9(),
    ModelListViewBuilderDay14(),
    Tugas10TextForm(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Brilliant Education")),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Text(
                "NAVIGATION MENU",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(Icons.check_box),
              title: Text("List"),
              onTap: () {
                ontapItemDrawer(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.toggle_on),
              title: Text("List Map"),

              onTap: () {
                ontapItemDrawer(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: Text("Model"),
              onTap: () {
                ontapItemDrawer(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_outlined),
              title: Text("Tugas 10"),
              onTap: () {
                ontapItemDrawer(3);
              },
            ),
          ],
        ),
      ),

      body: listWidget[_currentIndex],
    );
  }
}
