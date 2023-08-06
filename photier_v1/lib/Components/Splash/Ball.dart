import 'package:flutter/material.dart';

import '../../Data/Theme.dart';

class Ball extends StatelessWidget {
  final double radius;
  const Ball({
    super.key,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;
    double ballRadius = radius * aspectRatio;

    return Container(
      width: ballRadius,
      height: ballRadius,
      decoration: BoxDecoration(shape: BoxShape.circle, color: ballColor),
    );
  }
}
