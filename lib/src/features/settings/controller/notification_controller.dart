import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  bool _notificationsEnabled = true;

  bool get notificationsEnabled => _notificationsEnabled;

  void toggleNotification() {
    _notificationsEnabled = !_notificationsEnabled;
    notifyListeners();
  }

  void setNotification(bool value) {
    _notificationsEnabled = value;
    notifyListeners();
  }
}
