import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void justTest() async {
      await Future.delayed(const Duration(seconds: 5));
      Response res = await get(Uri.parse("https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY"));
      Map data = jsonDecode(res.body);
      Navigator.pushReplacementNamed(context, '/home',arguments: {
        "date" : data["date"],
        "desc" : data["explanation"],
        "img" : data["url"],
        "title" : data["title"]
      });
  } 
  @override
  void initState() {
    super.initState();
    justTest();
  }
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: SpinKitSpinningLines(color: Colors.white,size: 50,),)
      ],
    );
  }
}