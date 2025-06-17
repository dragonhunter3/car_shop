// splash_controller.dart
import 'dart:async';
import 'package:flutter/material.dart';

class SplashProvider with ChangeNotifier {
  bool _isDone = false;

  bool get isDone => _isDone;

  void startTimer() {
    Timer(const Duration(seconds: 3), () {
      _isDone = true;
      notifyListeners();
    });
  }
}
