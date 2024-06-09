import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:petshop/model.dart';

final baseUrl = Uri.parse("http://127.0.0.1:8000/");

Future<User> getUser(int id) async {

  final response = await http.get(baseUrl.replace(path: "/users/$id"));
  final decode = jsonDecode(response.body);

  return User.fromJson(decode);  
  
}
