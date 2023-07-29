// ignore_for_file: camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:y_chef/food_screen.dart';
import 'package:y_chef/sign.dart';

class loginChef extends StatefulWidget {
  const loginChef({super.key});

  @override
  State<loginChef> createState() => _loginChefState();
}

class _loginChefState extends State<loginChef> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.purple,
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 150)),
                    const Text(
                      "𝕤𝕚𝕘𝕟 𝕚𝕟",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                      ),
                    ),
                    const SizedBox(height: 50),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          prefixIcon: Icon(Icons.email)),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          prefixIcon: Icon(Icons.lock)),
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () => login(),
                          child: const Text(
                            "LOG IN",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      " --OR--",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {
                            navegatortTooSignScreen();
                          },
                          child: const Text(
                            "Sign in",
                            style: TextStyle(fontSize: 20),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navegatortTooSignScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => sign(),
        ));
  }

  login() {
    String email = emailController.text;
    String password = passwordController.text;
    auth
        .signInWithEmailAndPassword(
      email: email,
      password: password,
    )
        .then(
      (value) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Food_Screen(),
            ));
      },
    );
  }
}
