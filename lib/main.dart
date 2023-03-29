import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/Screen/AudioPlay/View/AudioPlayScreen.dart';
import 'package:spotify/Screen/BottomBarScreen/Provider/BottomBarScreenProvider.dart';
import 'package:spotify/Screen/BottomBarScreen/View/BottomBarScreen.dart';
import 'package:spotify/Screen/FlasScreen/View/FlasScreen.dart';
import 'package:spotify/Screen/Home/Provider/HomeProvider.dart';
import 'package:spotify/Screen/Home/View/HomeScreen.dart';
import 'package:spotify/Screen/Login/View/SignInScreen.dart';
import 'package:spotify/Screen/Login/View/SignUpScreen.dart';
import 'package:spotify/Screen/PlayListScreen/View/PlayListScreen.dart';
import 'package:spotify/Screen/Premium/View/PremiumScreen.dart';
import 'package:spotify/Screen/Search/Provider/SearchScreenProvider.dart';
import 'package:spotify/Screen/Search/View/SearchScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomBarScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchScreenProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => FlasScreen(),
          'signup': (context) => SignUpScreen(),
          'signin': (context) => SignInScreen(),
          'bottom_bar': (context) => BottomBarScreen(),
          'home': (context) => HomeScreen(),
          'playlist': (context) => PlayListScreen(),
          'audio play': (context) => AudioPlayScreen(),
          'search': (context) => SearchScreen(),
          'premium': (context) => PremiumScreen()
        },
      ),
    ),
  );
}
