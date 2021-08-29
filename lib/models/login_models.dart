import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginResponseModel {
  final String token;
  final String error;
  final String cattle_id;
  final String user_id;
  LoginResponseModel({this.token, this.error, this.cattle_id, this.user_id});

  factory LoginResponseModel.fromJson(Map<String, dynamic> jsons) {
    return LoginResponseModel(
        token: jsons['token'] != null ? jsons['token'] : '',
        error: jsons['error'] != null ? jsons['error'] : '',
        cattle_id: jsons['cattle_id'] != null ? jsons['cattleid'] : '',
        user_id: jsons['user_id'] != null ? jsons['user_id'] : '');
  }
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({this.email, this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> maps = {"email": email, 'password': password};
    return maps;
  }
}
