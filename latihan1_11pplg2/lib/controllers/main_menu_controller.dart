import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/fragments/football_player_fragment.dart';
import 'package:latihan1_11pplg2/fragments/home_fragment.dart';
import 'package:latihan1_11pplg2/fragments/profile_fragment.dart';

class MainMenuController extends GetxController{

  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    HomeFragment(), 
    FootballPlayerFragment(), 
    ProfileFragment()
  ];

  void changePage(int index){
    selectedIndex.value = index;
  }
}