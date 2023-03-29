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

    Model m1 = ModalRoute.of(context)!.settings.arguments as Model;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "${m1.Images![0]}",
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
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
                    const Icon(
                      Icons.play_circle,
                      color: Colors.green,
                      size: 60,
                    )
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: m1.PlayList!.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Model M1 = Model(
                            Images: m1.Images!,
                            PlayList: m1.PlayList!,
                            Name: m1.Name!,
                            index: index,
                          );

                          homeProviderfalse!.selectAudio(M1);

                          Navigator.pushNamed(
                            context,
                            'audio play',
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 80,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 30,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white30,
                              ),
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  SizedBox(width: 20),
                                  Text(
                                    "${m1.Name![index]}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
