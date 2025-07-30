import 'package:flutter/material.dart';
import 'custom_widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  final TextEditingController txtTanggalLahir = TextEditingController();

  String? kelamin;
  String statusRegistrasi = "Status Registrasi";

  Future<void> _selectTanggalLahir(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2008),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        txtTanggalLahir.text = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  void _register() {
    if (txtUsername.text.isEmpty ||
        txtEmail.text.isEmpty ||
        txtPassword.text.isEmpty ||
        kelamin == null ||
        txtTanggalLahir.text.isEmpty) {
      setState(() {
        statusRegistrasi = "Registrasi Gagal";
      });
    } else {
      print("Username : ${txtUsername.text}");
      print("Email : ${txtEmail.text}");
      print("Password : ${txtPassword.text}");
      print("Kelamin : $kelamin");
      print("Tanggal Lahir : ${txtTanggalLahir.text}");

      setState(() {
        statusRegistrasi = "Registrasi Berhasil";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Register")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 150,
                height: 150,
                child: Image.asset('assets/iwak.jpg'),
              ),
            ),
            const Text(
              "Silakan isi data diri anda",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),

            CustomInputField(
              label: "Username",
              controller: txtUsername,
            ),
            CustomInputField(
              label: "Email",
              controller: txtEmail,
            ),
            CustomInputField(
              label: "Password",
              controller: txtPassword,
              obscure: true,
            ),

            const SizedBox(height: 10),
            const Text("Jenis Kelamin"),
            Row(
              children: [
                Radio<String>(
                  value: "Laki-laki",
                  groupValue: kelamin,
                  onChanged: (val) {
                    setState(() {
                      kelamin = val;
                    });
                  },
                ),
                const Text("Laki-laki"),
                Radio<String>(
                  value: "Perempuan",
                  groupValue: kelamin,
                  onChanged: (val) {
                    setState(() {
                      kelamin = val;
                    });
                  },
                ),
                const Text("Perempuan"),
              ],
            ),

            GestureDetector(
              onTap: () => _selectTanggalLahir(context),
              child: AbsorbPointer(
                child: CustomInputField(
                  label: "Tanggal Lahir",
                  controller: txtTanggalLahir,
                ),
              ),
            ),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: _register,
                child: const Text("Register"),
              ),
            ),

            Text(statusRegistrasi),
          ],
        ),
      ),
    );
  }
}