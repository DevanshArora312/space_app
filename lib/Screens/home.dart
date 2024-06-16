import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    data = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey[600],
        title: const Text("Welcome to the Space App", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Astronomical Picture of the Day",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Image.network(data["img"],width: 300,height: 300,),
              Text("Date : ${data['date']}",style:const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              Text(
                data["title"],
                style:const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
                textAlign: TextAlign.center,
              ),
              Text(data["desc"])
            ],
          ),
        ),
      ),
    );
  }
}