import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'Home.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.blue.shade600),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        child: Center(
          child: Column(children: const [
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 80,
              foregroundImage: AssetImage("assets/images/profile.png"),
            ),
            SizedBox(
              height: 40,
            ),
            Text("Mohammad alshboul"),
            SizedBox(
              height: 40,
            ),
            Text("Mohammad@gmail.com")
          ]),
        ),
      ),
    );
  }
}
