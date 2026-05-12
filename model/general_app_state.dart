import 'package:flutter/material.dart';

class GeneralAppState {
  final String textScreen;
  final Color colorK1;
  final Color colorK1S;
  final Color colorK2;
  final Color colorK3;
  final Color colorK3S;
  final Color colorS1;
  final Color colorS2;
  final Color colorS3;
  final bool isPressed;
  final bool isLocked;

  const GeneralAppState({
    this.textScreen = "Hola Calamot, \nSort a l'examen",
    this.colorK1 = const Color.fromARGB(255, 180, 180, 200),
    this.colorK1S = const Color.fromARGB(255, 150, 150, 255),
    this.colorK2 = const Color.fromARGB(255, 50, 50, 255),
    this.colorK3 = const Color.fromARGB(255, 60, 60, 80),
    this.colorK3S = const Color.fromARGB(255, 0, 0, 80),
    this.colorS1 = const Color.fromARGB(255, 200, 255, 200),
    this.colorS2 = const Color.fromARGB(255, 50, 255, 50),
    this.colorS3 = const Color.fromARGB(255, 0, 80, 0),
    this.isPressed = false,
    this.isLocked = false,
  });

  // Mètode copyWith per facilitar la immutabilitat
  GeneralAppState copyWith({
    String? textScreen,
    Color? colorK1,
    Color? colorK1S,
    Color? colorK2,
    Color? colorK3,
    Color? colorK3S,
    Color? colorS1,
    Color? colorS2,
    Color? colorS3,
    bool? isPressed,
    bool? isLocked,
  }) {
    return GeneralAppState(
      textScreen: textScreen ?? this.textScreen,
      colorK1: colorK1 ?? this.colorK1,
      colorK1S: colorK1S ?? this.colorK1S,
      colorK2: colorK2 ?? this.colorK2,
      colorK3: colorK3 ?? this.colorK3,
      colorK3S: colorK3S ?? this.colorK3S,
      colorS1: colorS1 ?? this.colorS1,
      colorS2: colorS2 ?? this.colorS2,
      colorS3: colorS3 ?? this.colorS3,
      isPressed: isPressed ?? this.isPressed,
      isLocked: isLocked ?? this.isLocked,
    );
  }
}
