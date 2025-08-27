import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controllers/main_menu_controller.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final MainMenuController mainMenuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      body: mainMenuController.pages[mainMenuController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: mainMenuController.changePage,
        currentIndex: mainMenuController.selectedIndex.value,
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Kalkulator"),
        BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: "Daftar Pemain"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
      ]),
    ));
  }
}