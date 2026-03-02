import 'package:flutter/material.dart';
import 'package:joshuaproject/Day_15/homepage_tugas10.dart';
import 'package:joshuaproject/Extansion/navigator.dart';

class Tugas10TextForm extends StatefulWidget {
  const Tugas10TextForm({super.key});

  @override
  State<Tugas10TextForm> createState() => _Tugas10TextFormState();
}

class _Tugas10TextFormState extends State<Tugas10TextForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isVisibility = false;
  void visibilityOnOff() {
    isVisibility = !isVisibility;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 89, 4, 110),
                  ),
                ),

                errorStyle: TextStyle(
                  color: const Color.fromARGB(255, 135, 34, 160),
                ),
                border: OutlineInputBorder(),
                hintText: "Masukkan Nama Lengkap",
                labelText: "Nama Lengkap",
                prefixIcon: Icon(Icons.person),
              ),
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Nama wajib diisi";
                }
              }, //value
            ),

            SizedBox(height: 20),

            TextFormField(
              decoration: InputDecoration(
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: const Color.fromARGB(255, 95, 59, 255),
                  ),
                ),

                errorStyle: TextStyle(
                  color: const Color.fromARGB(255, 7, 23, 255),
                ),
                border: OutlineInputBorder(),
                hintText: "Masukkan Email anda",
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email tidak boleh kosong";
                } else if (!value.contains("@")) {
                  return "Email tidak valid";
                } else {
                  return null;
                }
              }, //value
            ),

            SizedBox(height: 20),

            TextFormField(
              obscureText: isVisibility,
              obscuringCharacter: "♡",
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Masukkan Password Anda",
                labelText: "Password",
                prefixIcon: Icon(Icons.key),
                suffixIcon: InkWell(
                  onTap: visibilityOnOff,
                  child: Icon(
                    !isVisibility ? Icons.visibility : Icons.visibility_off,
                  ),
                ),
              ),
              controller: passwordController,
              validator: (value) {
                final password = value ?? '';
                if (password.isEmpty) {
                  return "Password tidak boleh kosong";
                }
                if (password.length < 6) {
                  return "Password minimal 6 karakter";
                }

                final hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
                final hasLowercase = RegExp(r'[a-z]').hasMatch(password);
                final hasNumber = RegExp(r'\d').hasMatch(password);
                final hasSpecialChar = RegExp(
                  r'[!@#$%^&*(),.?":{}|<>_\-\\/\[\];\`~+=]',
                ).hasMatch(password);

                if (!hasUppercase) {
                  return "Password harus mengandung minimal 1 huruf besar";
                }
                if (!hasLowercase) {
                  return "Password harus mengandung minimal 1 huruf kecil";
                }
                if (!hasNumber) {
                  return "Password harus mengandung minimal 1 angka";
                }
                if (!hasSpecialChar) {
                  return "Password harus mengandung minimal 1 karakter spesial";
                }

                return null;
              },
            ),

            SizedBox(height: 20),

            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    dialogError(context);
                  } else {
                    print("Tidak Berhasil tervalidasi");
                  }
                },
                child: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> dialogError(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text("Oops", style: TextStyle(fontSize: 24)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Email yang anda masukkan salah"),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text("Coba lagi"),
                    ),
                  ),

                  SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context.pop();
                        context.push(
                          HomePageTugas10(text: emailController.text),
                        );
                      },
                      child: Text("Lanjut"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
