import 'package:flutter/material.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: 300,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("Why join Premium?",style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: Colors.white38,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.done,color: Colors.green,),
                        SizedBox(width: 10,),
                        Text("Download to listen offline without wifi",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.done,color: Colors.green,),
                        SizedBox(width: 10,),
                        Text("Music without ad interruption",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.done,color: Colors.green,),
                        SizedBox(width: 10,),
                        Text("2x high sound quality than free plan",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.done,color: Colors.green,),
                        SizedBox(width: 10,),
                        Text("Play song with any order with unlimited skips",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.done,color: Colors.green,),
                        SizedBox(width: 10,),
                        Text("Cancle monthly plans online anytime",style: TextStyle(fontSize: 15,color: Colors.white),),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 60,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text("GET OFFER",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.all(30),
                height: 90,
                width: double.infinity,
                child: Row(
                  children: [
                    Text("Spotify Free",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    Expanded(child: SizedBox(),),
                    Text("CURRENT PLAN",style: TextStyle(fontSize: 11,color: Colors.white),)
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("Pick your Premium",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 320,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 90,
                          width: 180,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 35,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                alignment: Alignment.center,
                                child: Text("LIMITED TIME OFFER",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                              ),
                              Text("Special Premium\nOffer",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Column(
                          children: [
                            Text("₹499",style: TextStyle(fontSize: 25,color: Colors.white),),
                            Text("FOR 12 MONTH",style: TextStyle(fontSize: 10,color: Colors.white),),
                          ],
                        ),
                        SizedBox(width: 20,),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 80,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text("Ad-free music listening•Download to\nlisten offline•Debit and credit cards\n                        accepted",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      width: 180,
                      alignment: Alignment.center,
                      child: Text("GET PREMIUM",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Terms and codition app",style: TextStyle(color: Colors.white),),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("Pick your Premium",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 320,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 90,
                          width: 180,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 35,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                alignment: Alignment.center,
                                child: Text("LIMITED TIME OFFER",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                              ),
                              Text("Special Premium\nOffer",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Column(
                          children: [
                            Text("₹499",style: TextStyle(fontSize: 25,color: Colors.white),),
                            Text("FOR 12 MONTH",style: TextStyle(fontSize: 10,color: Colors.white),),
                          ],
                        ),
                        SizedBox(width: 20,),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 80,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text("Ad-free music listening•Download to\nlisten offline•Debit and credit cards\n                        accepted",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      width: 180,
                      alignment: Alignment.center,
                      child: Text("GET PREMIUM",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Terms and codition app",style: TextStyle(color: Colors.white),),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text("Pick your Premium",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 320,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 90,
                          width: 180,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 35,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                alignment: Alignment.center,
                                child: Text("LIMITED TIME OFFER",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                              ),
                              Text("Special Premium\nOffer",style: TextStyle(fontSize: 20,color: Colors.white),),
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Column(
                          children: [
                            Text("₹499",style: TextStyle(fontSize: 25,color: Colors.white),),
                            Text("FOR 12 MONTH",style: TextStyle(fontSize: 10,color: Colors.white),),
                          ],
                        ),
                        SizedBox(width: 20,),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 80,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text("Ad-free music listening•Download to\nlisten offline•Debit and credit cards\n                        accepted",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      width: 180,
                      alignment: Alignment.center,
                      child: Text("GET PREMIUM",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Terms and codition app",style: TextStyle(color: Colors.white),),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}