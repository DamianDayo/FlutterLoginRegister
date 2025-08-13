import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/components/custom_widgets.dart';
import '../controllers/edit_player_controller.dart';

class EditPlayerPage extends StatelessWidget {
  final int index;
  EditPlayerPage({super.key, required this.index});

  final EditPlayerController editController = Get.put(EditPlayerController());

  @override
  Widget build(BuildContext context) {
    editController.setPlayerData(index);

    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(

        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [

            Center(
              child: ClipRRect(
                child: Image.asset(
                  editController.fotoPath,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(top: 16),
                children: [
                  CustomInputField(label: "Nama",  controller: editController.txtNama),
                  CustomInputField(label: "Posisi", controller: editController.txtPosisi),
                  CustomInputField(
                    label: "Nomor Punggung",
                    controller: editController.txtNomor,
                    isNumber: true,
                  ),
                ],
              ),
            ),

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