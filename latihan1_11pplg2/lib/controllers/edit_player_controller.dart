import 'package:get/get.dart';
import 'football_player_controller.dart';

class EditPlayerController extends GetxController {
  late int playerIndex;
  late FootballPlayerController footballPlayerController;

  @override
  void onInit() {
    super.onInit();
    playerIndex = Get.arguments as int;
    footballPlayerController = Get.find<FootballPlayerController>();
  }

  void savePlayer(String nama, String posisi, int nomor) {
    footballPlayerController.updatePlayer(
      playerIndex,
      nama,
      posisi,
      nomor,
    );
    Get.back();
  }
}