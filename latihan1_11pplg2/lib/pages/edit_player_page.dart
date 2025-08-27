import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/components/custom_widgets.dart';
import '../controllers/edit_player_controller.dart';

class EditPlayerPage extends StatelessWidget {
  final EditPlayerController controller = Get.put(EditPlayerController());

  final txtNama = TextEditingController();
  final txtPosisi = TextEditingController();
  final txtNomor = TextEditingController();

  EditPlayerPage({super.key}) {
    final player = controller.footballPlayerController.players[controller.playerIndex];
    txtNama.text = player.nama;
    txtPosisi.text = player.posisi;
    txtNomor.text = player.nomor.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                controller.footballPlayerController.players[controller.playerIndex].foto,
              ),
            ),
            const SizedBox(height: 20),

            CustomInputField(label: "Nama", controller: txtNama),
            CustomInputField(label: "Posisi", controller: txtPosisi),
            CustomInputField(label: "Nomor Punggung", controller: txtNomor, isNumber: true),

            const Spacer(),
            CustomButton(
              text: "Simpan Perubahan",
              onPressed: () {
                controller.savePlayer(
                  txtNama.text,
                  txtPosisi.text,
                  int.tryParse(txtNomor.text) ??
                      controller.footballPlayerController.players[controller.playerIndex].nomor,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}