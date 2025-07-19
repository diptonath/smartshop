import 'dart:convert';
import 'package:flutter/cupertino.dart';

// import 'package.flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthViewModel extends ChangeNotifier {
  bool _isLoading = false;
  String? _errorMessage;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  // Login method that communicates with the FakeStoreAPI
  Future<bool> login(String username, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      final response = await http.post(
        Uri.parse('https://fakestoreapi.com/auth/login'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'username': username,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // Successful login
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);
        // Optionally save the token if you need it for other API calls
        // String token = json.decode(response.body)['token'];
        // await prefs.setString('token', token);

        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        // Failed login
        final responseData = json.decode(response.body);
        _errorMessage = responseData['msg'] ?? 'An unknown error occurred.';
        _isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      // Catch network or other errors
      _errorMessage = 'Failed to connect. Please check your connection.';
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  // Logout method
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    // Clears all data from SharedPreferences
    await prefs.clear();
  }
}