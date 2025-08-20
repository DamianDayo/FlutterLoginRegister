import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/damian.jpg"),
            ),
            SizedBox(height: 20),
            Text("DamianDayo"),
            Text("diogenesdamianchrisnanda@gmail.com"),
            Text("12 / 11 PPLG 2"),
          ],
        ),
      ),
    );
  }
}