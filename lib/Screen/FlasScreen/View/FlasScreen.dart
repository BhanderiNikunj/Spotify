import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spotify/Utiles/shared_preferences.dart';

class FlasScreen extends StatefulWidget {
  const FlasScreen({Key? key}) : super(key: key);

  @override
  State<FlasScreen> createState() => _FlasScreenState();
}

class _FlasScreenState extends State<FlasScreen> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "Assets/Images/Spotify.png",
                width: 200,
                height: 200,
              ),
              CircularProgressIndicator(
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Future<void> checkLogin() async {
    Shr shr = Shr();

    Map m1 = await shr.readData();

    if(m1['isLogin'] == true){
      Timer(
        Duration(
          seconds: 3,
        ),
            () {
          Navigator.pushReplacementNamed(context, 'bottom_bar');
        },
      );
    }
    else{
      Navigator.pushReplacementNamed(context, 'signin');
    }
  }
}
