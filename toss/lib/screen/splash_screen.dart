import 'package:flutter/material.dart';
import 'package:toss/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    applicationInitState();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            '토스 클론'
          )
        ),
      ),
    );
  }

  Widget _tossSymbol() {
    return Image.asset(
      'resource/icon/logo.png',
      width: MediaQuery.of(context).size.width*0.25,
      fit: BoxFit.cover,
    );
  }

  Future applicationInitState() async {

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }
}
