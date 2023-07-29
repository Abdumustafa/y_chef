import 'package:flutter/material.dart';

class momo extends StatelessWidget {
  const momo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "login",
          style: TextStyle(color: Colors.red),
        ),
        centerTitle: true,


      ),
    );
  }
}
