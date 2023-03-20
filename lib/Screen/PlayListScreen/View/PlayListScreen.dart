import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify/Screen/Home/Provider/HomeProvider.dart';
import 'package:spotify/Screen/PlayListScreen/Model/ModelClass.dart';

class PlayListScreen extends StatefulWidget {
  const PlayListScreen({Key? key}) : super(key: key);

  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                transform: GradientRotation(pi / 2),
                colors: [
                  Colors.amber,
                  Colors.black,
                  Colors.black,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 250,
                    width: 250,
                    child: Image.asset(
                      "Assets/Images/PlayList1/aukaat.jpg",
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 30,
                          ),
                          Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      Icon(
                        Icons.play_circle,
                        color: Colors.green,
                        size: 60,
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: homeProviderfalse!.PlayList1.length,
                      itemBuilder: (context, index) {
                        return PlayList1(index);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget PlayList1(int index) {
    return InkWell(
      onTap: () {
        Model m1 = Model(
          index: index,
          image: homeProviderfalse!.PlayListImage1[index],
          name: homeProviderfalse!.PlayListName1[index],
        );
        Navigator.pushNamed(context, 'audio play',arguments: m1);
      },
      child: Container(
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "${homeProviderfalse!.PlayListName1[index]}",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              onPressed: () {
                homeProviderfalse!.ChechPlayButton();
              },
            ),
          ],
        ),
      ),
    );
  }
}
