import 'package:flutter/material.dart';
import 'package:spotify/Utiles/shared_preferences.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController txtUEmail = TextEditingController();
  TextEditingController txtUPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "Assets/Images/Spotify.png",
                height: 150,
                width: 150,
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 400,
                    child: TextField(
                      controller: txtUEmail,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(),
                        label: Text(
                          "Enter E-mail",
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 400,
                    child: TextField(
                      controller: txtUPassword,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(),
                          label: Text(
                            "Enter Password",
                          ),
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () async {
                  var Useremail = txtUEmail.text;
                  var Userpassword = txtUPassword.text;

                  Shr shr = Shr();

                  Map m1 = await shr.readData();

                  if (Useremail == m1['g1'] && Userpassword == m1['p1']) {
                    shr.CreatData(Useremail, Userpassword, true);
                    Navigator.pushReplacementNamed(context, 'bottom_bar');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Invalid PassWord Or Email"),
                      ),
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.green.shade900),
                    color: Colors.green,
                  ),
                  height: 50,
                  width: 120,
                  alignment: Alignment.center,
                  child: Text(
                    "SignUp",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signup');
                },
                child: const Text("Create Have A Account? SignUp"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
