import 'package:flutter/material.dart';
import 'register_page.dart';
import '../components/custom_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin = "Status Login";
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  void _login() {
    if (txtUsername.text == "ShiroJowo" && txtPassword.text == "rampokbank1") {
      setState(() {
        statusLogin = "Login Berhasil";
      });
    } else {
      setState(() {
        statusLogin = "Login Gagal";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Login")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleText(text: "Selamat Datang"),
                const HeaderImage(),
                const Text("Silakan masukkan username dan password anda"),
                CustomInputField(
                  label: "Username",
                  controller: txtUsername,
                  isNumber: false,
                ),
                CustomInputField(
                  label: "Password",
                  controller: txtPassword,
                  obscure: true,
                  isNumber: false,
                ),
                CustomButton(text: "Login", onPressed: _login),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const RegisterPage()));
                    },
                    child: const Text(
                      "Belum punya akun? Silakan Register",
                      style: TextStyle(color: Colors.blue),
                      ),
                  ),
                ),
                Text(statusLogin),
              ],
            ),
          ),
        ),
      ),
    );
  }
}