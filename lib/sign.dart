// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:y_chef/food_screen.dart';

class sign extends StatefulWidget {
  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.lock,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  sigin();
                },
                child: const Text(
                  "create Account",
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ]),
      ),
    );
  }

  void navegatortToFoodScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Food_Screen(),
        ));
  }

  void sigin() {
    String email = emailController.text;
    String password = passwordController.text;
    auth
        .createUserWithEmailAndPassword(
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
