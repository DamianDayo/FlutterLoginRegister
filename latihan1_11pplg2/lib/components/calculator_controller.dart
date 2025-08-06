import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var textHasil = "".obs;

  void tambah() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;
    textHasil.value = (angka1 + angka2).toString();
  }

  void kurang() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;
    textHasil.value = (angka1 - angka2).toString();
  }

  void kali() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) ?? 0;
    textHasil.value = (angka1 * angka2).toString();
  }

  void bagi() {
    int angka1 = int.tryParse(txtAngka1.text) ?? 0;
    int angka2 = int.tryParse(txtAngka2.text) == 0 ? 1 : int.tryParse(txtAngka2.text)!;
    if (angka2 == 0) {
      textHasil.value = "Tidak bisa dibagi 0";
    } else {
      textHasil.value = (angka1 / angka2).toStringAsFixed(2);
    }
  }

  void clear() {
    txtAngka1.clear();
    txtAngka2.clear();
    textHasil.value = "";
  }
}