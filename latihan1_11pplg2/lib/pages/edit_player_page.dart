import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/components/custom_widgets.dart';
import '../controllers/edit_player_controller.dart';

class EditPlayerPage extends StatelessWidget {
  final EditPlayerController editController = Get.put(EditPlayerController());

  EditPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final int index = Get.arguments;
    editController.setPlayerData(index);

    return Scaffold(
      appBar: AppBar(title: Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                editController.footballPlayerController.players[index].foto,
              ),
            ),
            const SizedBox(height: 20),

            CustomInputField(label: "Nama", controller: editController.txtNama),
            CustomInputField(label: "Posisi", controller: editController.txtPosisi),
            CustomInputField(label: "Nomor Punggung", controller: editController.txtNomor, isNumber: true),
            
            const Spacer(),
            CustomButton(
              text: "Simpan Perubahan",
              onPressed: editController.savePlayer,
            ),
          ],
        ),
      ),
    );
  }
}