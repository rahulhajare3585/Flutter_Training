import 'package:flutter/foundation.dart';

class ApiService {
  ApiService._singleton();
  static final ApiService instance = ApiService._singleton();

  String get baseUrl {
    if (kDebugMode) {
      return 'https://incisions-api-qa.azurewebsites.net/';
    }
    return 'https://incisions-api-qa.azurewebsites.net/';
  }
}
