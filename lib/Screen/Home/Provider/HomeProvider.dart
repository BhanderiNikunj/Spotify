import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  AssetsAudioPlayer? assetsAudioPlayer;
  bool check = false;
  Duration TotalDuration = Duration.zero;

  List<Audio> PlayList1 = [
    Audio("Assets/Audio/PlayList1/AUKAAT.mp3"),
    Audio("Assets/Audio/PlayList1/Rayfal 3 Reload.mp3"),
    Audio("Assets/Audio/PlayList1/The Mafia Raaj.mp3.mp3"),
    Audio("Assets/Audio/PlayList1/Rayfale Rahda Ramade.mp3.mp3"),
    Audio("Assets/Audio/PlayList1/Rona Ser Ma.mp3.mp3"),
    Audio("Assets/Audio/PlayList1/Lagyo Prityu No Rang.mp3.mp3"),
    Audio("Assets/Audio/PlayList1/Nanpan No Nedlo.mp3.mp3"),
  ];

  List PlayListName1 = [
    "AUKAAT",
    "Rayfal 3 Reload",
    "The Mafia Raaj",
    "Rayfale Rahda Ramade",
    "Rona Ser Ma",
    "Lagyo Prityu No Rang",
    "Nanpan No Nedlo",
  ];
  List PlayListImage1 = [
    "Assets/Images/PlayList1/aukaat.jpg",
    "Assets/Images/PlayList1/Rayfal 3 Reload.jpg",
    "Assets/Images/PlayList1/The Mafia Raaj.jpg",
    "Assets/Images/PlayList1/Rayfale Rahda Ramade.jpg",
    "Assets/Images/PlayList1/Rona Ser Ma.jpg",
    "Assets/Images/PlayList1/Lagyo Prityu No Rang.jpg",
    "Assets/Images/PlayList1/Nanpan No Nedlo.jpg",
  ];

  void initAudio() {
    assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer!.open(
      Playlist(audios: PlayList1),
      showNotification: true,
      autoStart: false,
    );
  }

  Future<void> StartAudio() async {
    await assetsAudioPlayer!.play();
  }

  Future<void> StopAudio() async {
    await assetsAudioPlayer!.pause();
  }

  void ChechPlayButton() {
    check?StartAudio():StopAudio();
    check = !check;
    notifyListeners();
  }
}
