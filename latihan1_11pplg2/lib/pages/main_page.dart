import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'calculator_page.dart';
import 'football_player_page.dart';
import 'profile_page.dart';

class MainController extends GetxController {
  var currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
  }
}

class MainPage extends StatelessWidget {
  final MainController controller = Get.put(MainController());

  final List<Widget> pages = [
    CalculatorPage(),
    FootballPlayerPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: pages[controller.currentIndex.value],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changeTab,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.calculate), label: "Kalkulator"),
              BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: "Daftar Pemain"),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
            ],
          ),
        ));
  }
}