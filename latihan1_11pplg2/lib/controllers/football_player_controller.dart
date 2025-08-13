import 'package:get/get.dart';

class Player {
  String nama;
  String posisi;
  int nomor;
  String foto;

  Player({
    required this.nama,
    required this.posisi,
    required this.nomor,
    required this.foto,
  });
}

class FootballPlayerController extends GetxController {
  var players = <Player>[
    Player(nama: "Shirokopling", posisi: "Penyerang", nomor: 11, foto: "assets/iwak.jpg"),
    Player(nama: "Hoshireng", posisi: "Kiper", nomor: 1, foto: "assets/hoshino.jpg"),
    Player(nama: "Ice Buko", posisi: "Gelandang", nomor: 8, foto: "assets/atsuko.jpg"),
    Player(nama: "Hina Siapa", posisi: "Bek", nomor: 4, foto: "assets/hina.png"),
    Player(nama: "Aris Setiawan", posisi: "Sayap", nomor: 7, foto: "assets/aris.jpg"),
  ].obs;

  void updatePlayer(int index, String nama, String posisi, int nomor) {
    players[index].nama = nama;
    players[index].posisi = posisi;
    players[index].nomor = nomor;
    players.refresh();
  }
}