import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

abstract class AppGradients {
  Gradient get background;
}

class AppGradientsDefault implements AppGradients {
  @override
  // TODO: implement background
  Gradient get background => LinearGradient(
        colors: [
          Color(0xFF40B38C),
          Color(0xFF45CC93),
        ],
        stops: [
          0,
          0.7,
        ],
        transform: GradientRotation(2.35629 * pi),
      );

  // TODO: implement quadrados

}
