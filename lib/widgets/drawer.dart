import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageURl = "file:///home/rajeshsharma/Downloads/user.svg";

    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.red),
                accountName: Text(
                  "Adamya Raj Sharma",
                  style: TextStyle(fontSize: 30),
                ),
                accountEmail: Text("adamyarajsharma24@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/image/user.png"),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail),
              title: Text(
                "Mail us",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              leading: Icon(CupertinoIcons.location),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
