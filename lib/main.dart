import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(gradientColors: [
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(31, 190, 184, 184)
        ]),
      ),
    ),
  );
}
