import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import '../controllers/football_player_controller.dart';

class FootballPlayer extends StatelessWidget {
  FootballPlayer({super.key});

  final FootballPlayerController footballPlayerController =
      Get.put(FootballPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kivotos Football Team"),
        leading: BackButton(
          onPressed: () {
            Get.back();
            }
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
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