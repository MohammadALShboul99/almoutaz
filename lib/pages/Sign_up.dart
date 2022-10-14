import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mohammad_shboul/Component/ButtoninLogin.dart';
import 'package:mohammad_shboul/Component/textFelied.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.blue.shade600),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.menu,
                color: Colors.blue,
              ))
        ],
        leading: const Icon(
          Ionicons.person,
          color: Colors.blue,
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
          Color.fromARGB(255, 213, 93, 249),
          Color.fromARGB(255, 168, 57, 212),
          Color.fromARGB(255, 250, 76, 241),
          Color.fromARGB(155, 165, 20, 190),
          Color.fromARGB(125, 218, 38, 231),
        ])),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 50),
                child: Text(
                  "Sign Up With Email and Password   ",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
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
                controller: Email,
              ),
              Text_fel(
                obscure: true,
                TypeInput: "Password",
                prefixIcon: const Icon(
                  Icons.key,
                  color: Colors.white,
                ),
                controller: Password,
              ),
              const SizedBox(
                height: 25,
              ),
              My_button(
                onPressed: () async {
                  Navigator.pushNamed(context, "Sign_in");
                  try {
                    var authentecationobject = FirebaseAuth.instance;
                    UserCredential myUser = await authentecationobject
                        .createUserWithEmailAndPassword(
                            email: Email.text, password: Password.text);
                  } catch (e) {}
                },
                MyText: "Create ",
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
