import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Screen/PlayListScreen/Model/ModelClass.dart';

class HomeProvider extends ChangeNotifier {
  AssetsAudioPlayer? assetsAudioPlayer;
  bool check = false;
  Duration TotalDuration = Duration();
  int i=0;

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


  List<Audio> PlayList2 = [
    Audio("Assets/Audio/PlayList2/Basti Ka Hasti.mp3"),
    Audio("Assets/Audio/PlayList2/EK DIN PYAAR.mp3"),
    Audio("Assets/Audio/PlayList2/COMPANY.mp3"),
    Audio("Assets/Audio/PlayList2/No Love.mp3"),
    Audio("Assets/Audio/PlayList2/TODH.mp3"),
    Audio("Assets/Audio/PlayList2/YALGAAR.mp3"),
  ];
  List PlayListName2 = [
    "Basti Ka Hasti",
    "EK DIN PYAAR",
    "COMPANY",
    "No Love",
    "TODH",
    "YALGAAR",
  ];
  List PlayListImage2 = [
    "Assets/Images/PlayList2/Basti Ka Hasti.jpg",
    "Assets/Images/PlayList2/COMPANY.jpg",
    "Assets/Images/PlayList2/EK DIN PYAAR.jpg",
    "Assets/Images/PlayList2/No Love.jpg",
    "Assets/Images/PlayList2/TODH.jpg",
    "Assets/Images/PlayList2/YALGAAR.jpg",
  ];



  List<Audio> PlayList3 = [
    Audio("Assets/Audio/PlayList3/295.mp3"),
    Audio("Assets/Audio/PlayList3/BROWN MUNDE.mp3"),
    Audio("Assets/Audio/PlayList3/Outlaw.mp3"),
    Audio("Assets/Audio/PlayList3/SARKAR.mp3"),
  ];
  List PlayListName3 = [
    "295",
    "Brown munde",
    "Outlaw",
    "Sarkar",
  ];
  List PlayListImage3 = [
    "Assets/Images/PlayList3/295.jpg",
    "Assets/Images/PlayList3/BROWN MUNDE.jpg",
    "Assets/Images/PlayList3/Outlaw.jpg",
    "Assets/Images/PlayList3/SARKAR.jpg",
  ];



  List<Audio> PlayList4 = [
    Audio("Assets/Audio/PlayList4/King.mp3"),
    Audio("Assets/Audio/PlayList4/295.mp3"),
    Audio("Assets/Audio/PlayList4/BROWN MUNDE.mp3"),
    Audio("Assets/Audio/PlayList4/Outlaw.mp3"),
    Audio("Assets/Audio/PlayList4/SARKAR.mp3"),
  ];
  List PlayListName4 = [
    "King",
    "295",
    "Brown munde",
    "Outlaw",
    "Sarkar",
  ];
  List PlayListImage4 = [
    "Assets/Images/PlayList4/King.jpg",
    "Assets/Images/PlayList4/295.jpg",
    "Assets/Images/PlayList4/BROWN MUNDE.jpg",
    "Assets/Images/PlayList4/Outlaw.jpg",
    "Assets/Images/PlayList4/SARKAR.jpg",
  ];



  List<Audio> PlayList5 = [
    Audio("Assets/Audio/PlayList5/Hanuman chalisa.mp3"),
    Audio("Assets/Audio/PlayList5/ganpato.mp3"),
    Audio("Assets/Audio/PlayList5/Namo Namo.mp3"),
  ];
  List PlayListName5 = [
    "Hanuman chalisa",
    "ganpato",
    "Namo Namo",
  ];
  List PlayListImage5 = [
    "Assets/Images/PlayList5/Hanuman chalisa.png",
    "Assets/Images/PlayList5/ganpati.jpeg",
    "Assets/Images/PlayList5/Namo Namo.jpg",
  ];

  Model m1 = Model();



  void selectAudio(Model m2){
    m1 = m2;
    notifyListeners();
  }


  void initAudio() {
    assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer!.open(
      m1.PlayList![m1.index!],
      showNotification: true,
      autoStart: false,
    );

    totalDurationAudio();
  }

  Future<void> StartAudio() async {
    await assetsAudioPlayer!.play();
  }

  Future<void> StopAudio() async {
    await assetsAudioPlayer!.pause();
  }


  Future<void> NextAudio() async {
    await assetsAudioPlayer!.next();
    notifyListeners();
  }

  Future<void> BackAudio() async {
    await assetsAudioPlayer!.previous();
    notifyListeners();
  }

  void ChechPlayButton() {
    check ? StartAudio() : StopAudio();
    check = !check;
    notifyListeners();
  }


  void totalDurationAudio() {
    assetsAudioPlayer!.current.listen((event) {
      TotalDuration = event!.audio.duration;
      notifyListeners();
    });
  }
}
