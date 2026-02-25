import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_12/checkboxpage.dart';
import 'package:joshuaproject/Day_12/datepickerpage.dart';
import 'package:joshuaproject/Day_12/dropdownpage.dart';
import 'package:joshuaproject/Day_12/switchpage.dart';
import 'package:joshuaproject/Day_12/timepickerpage.dart';

class Tugas7Flutter extends StatefulWidget {
  const Tugas7Flutter({super.key});

  @override
  State<Tugas7Flutter> createState() => _Tugas7FlutterState();
}

class _Tugas7FlutterState extends State<Tugas7Flutter> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;

  void onTapItem(int index) {
    setState(() {
      _currentIndex = index;
    });

    Navigator.pop(context);
    //untuk menutup drawer

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Tugas7Checkbox()),
      );
    }
  }

  void ontapItemDrawer(int index) {
    _currentIndex = index;
    setState(() {});
    Navigator.pop(context);
  }

  static List<Widget> listWidget = [
    Tugas7Checkbox(),
    Switchpage(),
    DropDownPage(),
    DatePickerPage(),
    TimePickerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Drawer"),
        leading: InkWell(
          onTap: () => _scaffoldKey.currentState?.openDrawer(),
          child: const Icon(Icons.menu),
        ),
      ),

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
              title: Text("Checkbox"),
              onTap: () {
                ontapItemDrawer(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.toggle_on),
              title: Text("Switch"),

              onTap: () {
                ontapItemDrawer(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_drop_down_circle),
              title: Text("Dropdown"),
              onTap: () {
                ontapItemDrawer(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text("Tanggal"),
              onTap: () {
                ontapItemDrawer(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text("Jam"),
              onTap: () {
                ontapItemDrawer(4);
              },
            ),
          ],
        ),
      ),

      body: listWidget[_currentIndex],
    );
  }
}
