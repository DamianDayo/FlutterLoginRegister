import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import '../controllers/football_player_controller.dart';

class FootballPlayerPage extends StatelessWidget {
  FootballPlayerPage({super.key});

  final FootballPlayerController footballPlayerController =
      Get.put(FootballPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kivotos Football Team")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballPlayerController.players.length,
            itemBuilder: (context, index) {
              final player = footballPlayerController.players[index];
              return ListTile(
                leading: Image.asset(
                  player.foto,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
                title: Text(player.nama),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(player.posisi),
                    Text("Nomor ${player.nomor}"),
                  ],
                ),
                trailing: const Icon(Icons.edit),
                onTap: () {
                  Get.toNamed(AppRoutes.editPlayerPage, arguments: index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}