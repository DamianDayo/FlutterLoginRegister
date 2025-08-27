import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/main_menu_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/football_player_page.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';
import 'package:latihan1_11pplg2/pages/profile_page.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.mainMenuPage, page: () => MainMenuPage()),
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballPage, page: () => FootballPlayerPage()),
    GetPage(name: AppRoutes.editPlayerPage, page: () => EditPlayerPage()),
    GetPage(name: AppRoutes.profilePage, page: () => ProfilePage()),
  ];
}