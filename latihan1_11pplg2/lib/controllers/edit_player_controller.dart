import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'football_player_controller.dart';

class EditPlayerController extends GetxController {
  final txtNama = TextEditingController();
  final txtPosisi = TextEditingController();
  final txtNomor = TextEditingController();

  late int playerIndex;
  late String fotoPath;

  final footballPlayerController = Get.find<FootballPlayerController>();
  bool _initialized = false;

  void setPlayerData(int index) {
    if (_initialized && playerIndex == index) return;

    playerIndex = index;
    final player = footballPlayerController.players[index];
    txtNama.text = player.nama;
    txtPosisi.text = player.posisi;
    txtNomor.text = player.nomor.toString();
    fotoPath = player.foto;

    _initialized = true;
  }

  void savePlayer() {
    footballPlayerController.updatePlayer(
      playerIndex,
      txtNama.text,
      txtPosisi.text,
      int.tryParse(txtNomor.text) ??
          footballPlayerController.players[playerIndex].nomor,
    );
    Get.back();
  }
}