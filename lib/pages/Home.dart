import 'package:flutter/material.dart';
import 'package:mohammad_shboul/Component/const_color.dart';
import 'package:mohammad_shboul/pages/FirstScreen.dart';

import 'package:mohammad_shboul/pages/Profile.dart';
import 'package:mohammad_shboul/pages/Sign_up.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import '../Component/Category/CategoyList.dart';
import '../Component/appbar.dart';
import '../Component/sorting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // *@dfas
  List page = [FirstScreen(), SignUpPage(), MyProfile()];
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom bar
      // now we will use bottom bar package

      body: page[_selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: [
          const TabItem(icon: Icons.home, title: 'Home'),
          const TabItem(icon: Icons.message, title: 'Message'),
          const TabItem(icon: Icons.people, title: 'Profile')
        ],
        backgroundColor: Colors.amber,
        activeColor: Colors.blue,
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            _selectedPage = i;
          });
        },
      ),
    );
  }
}
