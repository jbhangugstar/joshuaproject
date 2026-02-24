import 'package:flutter/material.dart';

class Switchpage extends StatefulWidget {
  const Switchpage({super.key});

  @override
  State<Switchpage> createState() => _SwitchpageState();
}

class _SwitchpageState extends State<Switchpage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Mode Gelap")),

      // ✅ Background berubah sesuai kondisi
      backgroundColor: isSwitched ? Colors.black : Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ✅ Switch + Label
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
                const SizedBox(width: 10),
                const Text(
                  "Aktifkan Mode Gelap",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
