import 'dart:convert';

import 'package:cattlemanager/models/login_models.dart';
import 'package:http/http.dart' as http;

class LoginService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    print(requestModel);
    final url = Uri.parse('https://reqres.in/api/login');
    final response = await http.post(url, body: requestModel.toJson());
    //if (response.statusCode == 200 || response.statusCode == 400)
    //     return LoginResponseModel.fromJson(json.decode(response.body));
    //  else {
    //     throw Exception('Failed to load data');
    //   }
    print(response);
    print(json.decode(response.body));
  }
}
