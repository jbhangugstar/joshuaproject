import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tugas5 extends StatefulWidget {
  const Tugas5({super.key});

  @override
  State<Tugas5> createState() => _Tugas5State();
}

class _Tugas5State extends State<Tugas5> {
  int _counter = 0;
  bool isVisible = false;
  bool isIconActive = false;
  String? selectedButton;
  int _selectedIndex = 0;

  void decrement() {
    _counter--;
    print("Nilai dari _Counter :$_counter");
    setState(() {});
  }

  void increment({String? textPrint}) {
    _counter++;
    print("Nilai dari _Counter :$_counter");
    print("$textPrint :$_counter");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Brilliant Education",
          style: TextStyle(
            fontSize: 30,
            color: CupertinoColors.extraLightBackgroundGray,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: const Icon(Icons.access_time),
        onPressed: () {
          setState(() {
            _counter = 0;
          });
        },
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Text(
                "Tampilkan nama",
                style: TextStyle(color: Colors.deepPurpleAccent),
              ),
            ),
          ),

          SizedBox(height: 20),
          if (isVisible)
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: isIconActive ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          isIconActive = !isIconActive;
                        });
                      },
                    ),
                    Text(
                      "MATEMATIKA",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                if (isIconActive) Text("Disukai!"),
              ],
            ),

          InkWell(
            splashColor: Colors.purpleAccent,
            onTap: increment,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.network(
                "https://awsimages.detik.net.id/community/media/visual/2021/04/12/ilustrasi-belajar-online_169.jpeg?w=1200)",
              ),
            ),
          ),

          SizedBox(height: 5),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: selectedButton == "belajar"
                      ? Colors.purpleAccent
                      : Colors.transparent,
                ),

                onPressed: () {
                  setState(() {
                    selectedButton = "belajar";
                  });
                },
                child: Text(
                  "Belajar",
                  style: TextStyle(
                    fontSize: 20,
                    color: selectedButton == "belajar"
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),

              SizedBox(width: 10),

              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: selectedButton == "lewati"
                      ? Colors.purpleAccent
                      : Colors.transparent,
                ),
                onPressed: () {
                  setState(() {
                    selectedButton = "lewati";
                  });
                },
                child: Text(
                  "Lewati",
                  style: TextStyle(
                    fontSize: 20,
                    color: selectedButton == "lewati"
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ],
          ),

          Container(
            height: 60,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _counter += 1;
                });
                print("Ditekan sekali");
              },
              onDoubleTap: () {
                setState(() {
                  _counter += 2;
                });
                print("Ditekan dua kali");
              },
              onLongPress: () {
                setState(() {
                  _counter += 3;
                });
                print("Tahan lama");
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                color: Colors.orange.shade200,
                child: Text(
                  "Counter: $_counter", // pakai _counter ya
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
