import 'package:get/get.dart';
import 'package:latihan1_11pplg2/pages/calculator_page.dart';
import 'package:latihan1_11pplg2/pages/edit_player_page.dart';
import 'package:latihan1_11pplg2/pages/football_player_page.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class AppPages{
  static final pages = [
    GetPage(name: AppRoutes.calculatorPage, page: ()=> CalculatorPage()),
    GetPage(name: AppRoutes.footballPage, page: ()=> FootballPlayer()),
    GetPage(
      name: AppRoutes.editPlayerPage,
      page: () {
        final index = Get.arguments as int;
        return EditPlayerPage(index: index);
      },
    ),
  ];
}