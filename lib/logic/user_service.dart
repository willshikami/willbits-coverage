import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:willbits_coverage/logic/user_modal.dart';

Future<List<User>> fetchUsers() async {
  final response = await http.get('https://jsonplaceholder.typicode.com/users');

  final ourResponse = json.decode(response);
  User user = new User.fromJson(ourResponse);
  // if (response.statusCode == 200) {
  //parse the JSON
  //   return AllUsers.fromJson(
  //     json.decode(response.body),
  //   );
  // } else {
  //   //throw exception
  //   throw Exception('Failed to load Users');
  // }
}
