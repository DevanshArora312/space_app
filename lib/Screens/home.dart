import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey[600],
        title: const Text("Space App", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
    );
  }
}