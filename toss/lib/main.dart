import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screen/splash_screen.dart';

void main() async {

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark
  ));

  runApp(const ApplicationLauncher());
}


class ApplicationLauncher extends StatelessWidget {

  const ApplicationLauncher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          surfaceTintColor: Colors.white,
          color: Colors.white,
          foregroundColor: Colors.white,
          scrolledUnderElevation: 5.0
        ),
        fontFamily: 'TossFace',
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            fontWeight: FontWeight.w300
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}