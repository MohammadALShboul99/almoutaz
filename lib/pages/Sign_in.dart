import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../Component/ButtoninLogin.dart';
import '../Component/textFelied.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  TextEditingController? controller1 = TextEditingController();
  TextEditingController? controller2 = TextEditingController();
  String? Name;
  String Email = "group5@gmail.com";
  String password = "123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign in",
          style: TextStyle(color: Colors.blue.shade600),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
          Color.fromARGB(255, 122, 171, 250),
          Color.fromARGB(255, 91, 165, 250),
          Color.fromARGB(255, 76, 117, 250),
          Color.fromARGB(210, 87, 111, 248),
          Color.fromARGB(255, 46, 121, 241),
        ])),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome ",
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 50),
                child: Text(
                  "Sign In With Email and Password or Continue With social Media  ",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text_fel(
                obscure: false,
                TypeInput: "Email",
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                controller: controller1,
              ),
              Text_fel(
                obscure: true,
                TypeInput: "Password",
                prefixIcon: const Icon(
                  Icons.key,
                  color: Colors.white,
                ),
                controller: controller2,
              ),
              const SizedBox(
                height: 25,
              ),
              My_button(
                onPressed: () {},
                MyText: "Sign in",
              ),
              const SizedBox(
                height: 10,
              ),
              My_button(
                onPressed: () {
                  Navigator.pushNamed(context, "Sign_up");
                },
                MyText: "Sign up",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
