// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Dessert extends StatelessWidget {
  const Dessert({super.key});

  final String imageUrl =
      "https://i.pinimg.com/474x/f2/e5/c1/f2e5c103f2d3934a3938a320429d1e2b--to-start-private-chef.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Breakfast"),
      ),
      body:
      SizedBox(
        width: double.infinity,
        child: Image.network(
          imageUrl,
          height: 230,
          fit: BoxFit.fill,

        ),
      ),

    );
  }
}
