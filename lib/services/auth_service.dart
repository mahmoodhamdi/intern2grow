import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intern2grow/models/user_model.dart';

Future<User?> getUserByUsernameAndPassword(
    String username, String password) async {
  final url = Uri.parse('https://dummyjson.com/user');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> usersDataList = json.decode(response.body)['users'];
      for (var userData in usersDataList) {
        User user = User.fromJson(userData);
        if (user.username == username && user.password == password) {
          return user;
        }
      }

      // If no matching user was found, return null.
      return null;
    } else {
      return null;
    }
  } catch (e) {
    
    return null;
  }
}
