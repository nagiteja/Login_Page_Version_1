import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:nagi_trial_two/widgets/custom_dialog.dart';
import 'package:flutter/rendering.dart';
//import 'package:simple_animations/simple_animations.dart';
import 'package:nagi_trial_two/cool_animations/faded_animations.dart';



class FirstView extends StatelessWidget {
  final primaryColor = Colors.green[200];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        width: _width,
        height: _height,
        color: primaryColor,
        child: Stack(
                  children: <Widget>[ 
             Positioned(
                  top: -50,
                  left: 0,
                  child: FadeAnimation(
                      1,
                      Container(
                        width: _width,
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/one_1.png'),
                                fit: BoxFit.cover)),
                      )),
                ),
                Positioned(
                  top: -100,
                  left: 0,
                  child: FadeAnimation(
                      1.3,
                      Container(
                        width: _width,
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/one_1.png'),
                                fit: BoxFit.cover)),
                      )),
                ),
                Positioned(
                  top: -150,
                  left: 0,
                  child: FadeAnimation(
                      1.6,
                      Container(
                        width: _width,
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/one_1.png'),
                                fit: BoxFit.cover)),
                      )),
                ),
            SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: _height * 0.10),
                  FadeAnimation(
                    1,
                     Text(
                      "Welcome To Peace",
                      style: TextStyle(fontSize: 44, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: _height * 0.10),
                  FadeAnimation(
                    1.3,
                      AutoSizeText(
                      "Hello there !\nHope you are doing fine :)",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  SizedBox(height: _height * 0.15),
                  FadeAnimation(
                    1.6,
                     RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => CustomDialog(
                            title: "Would you like to create a free account?",
                            description:
                                "With an account, your data will be securely saved, allowing you to access it from multiple devices.",
                            primaryButtonText: "Create My Account",
                            primaryButtonRoute: "/signUp",
                            secondaryButtonText: "Maybe Later",
                            secondaryButtonRoute: "/home",
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: _height * 0.05),
                  FadeAnimation(
                    1.8,
                     FlatButton(
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/signIn');
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
                  ]
        ),
      ),
    );
  }
}