import 'package:flutter/material.dart';

import '../services/database_services.dart';
import 'model/login_model.dart';

class LoginProvider with ChangeNotifier {
  final DatabaseService _databaseService = DatabaseService();
  List<Login> _logins = [];

  List<Login> get logins => _logins;

  void fetchdetails() {
    _databaseService.fetchdetails().listen((data) {
      _logins = data;
      notifyListeners();
    });
  }
}
