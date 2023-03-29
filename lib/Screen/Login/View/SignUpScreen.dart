import 'package:flutter/material.dart';
import 'package:spotify/Utiles/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

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
              const Text(
                "Create Account",
                style: TextStyle(
                  color: Color(0xff005C11),
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 400,
                    child: TextField(
                      controller: txtEmail,
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
                      controller: txtPassword,
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
                onTap: () {
                  var email = txtEmail.text;
                  var password = txtPassword.text;

                  Shr shr = Shr();
                  shr.CreatData(email, password, false);
                  Navigator.pop(context);
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
            ],
          ),
        ),
      ),
    );
  }
}
