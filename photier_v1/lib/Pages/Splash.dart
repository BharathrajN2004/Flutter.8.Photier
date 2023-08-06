import 'package:flutter/material.dart';
import 'package:photier_v1/Auth/Main.dart';

import '../Components/Splash/Ball.dart';
import '../Data/Theme.dart';
// import 'Home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 500),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Main()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: background,
        child: Stack(
          children: [
            const Positioned(top: -150, right: -180, child: Ball(radius: 700)),
            Positioned(
                top: height * 0.28,
                left: 0,
                right: 0,
                child: Image.asset("assets/icons/logo.png")),
            Positioned(
                top: height * 0.57,
                left: 0,
                right: 0,
                child: const Text(
                  'Finding your Photos made Easier',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const Positioned(
                bottom: -250, left: -250, child: Ball(radius: 1100)),
          ],
        ),
      ),
    );
  }
}
