import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeBTN = false;
  String username = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/image/LOGIN.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              child: Text("Hello ,$username,"),
              height: 20,
            ),
            Text(
              "Welcome , Please Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter your UserName", labelText: "UserName"),
                    onChanged: (value) {
                      username = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter your Password",
                          labelText: "Password"),
                      onChanged: (value) {
                        pass = value;
                        setState(() {});
                      }),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeBTN = true;
                      });

                      await Future.delayed(Duration(seconds: 1));

                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        width: changeBTN ? 50 : 200,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeBTN
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "L O G I N",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeBTN ? 200 : 10)),
                      ),
                    ),
                  )

                  // Padding(
                  //   padding: const EdgeInsets.all(23.0),
                  //   child: SizedBox(
                  //       height: 50,
                  //       width: 100,
                  //       child: ElevatedButton(
                  //         onPressed: () => {
                  //           Navigator.pushNamed(context, MyRoutes.homeRoute)
                  //         },
                  //         child: Text("Login"),
                  //         style: ButtonStyle(),
                  //       )),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
