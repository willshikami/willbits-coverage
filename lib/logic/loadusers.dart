import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:willbits_coverage/logic/usermodal.dart';

Future<User> fetchUsers() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/users');

  if (response.statusCode == 200) {
    //parse the JSON
    return User.fromJson(
      json.decode(response.body),
    );
  } else {
    //throw exception
    throw Exception('Failed to load Users');
  }
}
