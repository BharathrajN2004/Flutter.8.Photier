import 'package:flutter/material.dart';
import 'package:photier_v1/Auth/Auth.dart';
import 'package:photier_v1/Data/Theme.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;
    double headerSize = aspectRatio * 65;
    double textSize = aspectRatio * 28;

    var textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: textSize);
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/logo.png"),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Finding your Photos made Easier',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: ballColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: headerSize),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Take Photo with anyone",
                      style: textStyle,
                    ),
                    Text(
                      'But, sort your one',
                      style: textStyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Auth())),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.black,
                                borderRadius: BorderRadius.circular(40)),
                            child: Text(
                              "Log In",
                              style: textStyle.copyWith(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
