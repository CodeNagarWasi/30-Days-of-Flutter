import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/image/LOGIN.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            child: Text("Hello user,"),
            height: 20,
          ),
          Text(
            "Welcome , Please Login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
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
                        hintText: "Enter your UserName",
                        labelText: "UserName")),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password")),
                Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () => {print("Hi I am veer")},
                        child: Text("Login"),
                        style: ButtonStyle(),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
