import 'package:e_commerce_app/screens/signin.dart';
import 'package:e_commerce_app/screens/signup.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 550,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 320,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/shopping.png"),
                            ),
                          ),
                        ),
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          height: 70,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                "Ready To Start Shopping Sign Up",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "To get Started",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 45,
                          width: double.infinity,
                          child: ElevatedButton(
                            // shape: RoundedRectangleBorder(
                            //     borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) => SignUp(),
                                ),
                              );
                            },
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Already have an account? ",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => SignIn(),
                                  ),
                                );
                              },
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff7746bc9),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
