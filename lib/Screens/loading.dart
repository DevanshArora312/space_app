import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void justTest() async {
      await Future.delayed(const Duration(seconds: 5));
      Navigator.pushReplacementNamed(context, '/home');
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