import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  String? _userId;

  bool get isAuthenticated => _isAuthenticated;
  String? get userId => _userId;

   Future<void> login(String email,String password) async{
    _isAuthenticated = true;
    _userId = 'user123';
    notifyListeners();
    }

  logout(){
    _isAuthenticated = false;
    _userId = null;
    notifyListeners();
  }

  
}