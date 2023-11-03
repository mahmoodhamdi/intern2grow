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
      print(usersDataList);
      for (var userData in usersDataList) {
        User user = User.fromJson(userData);
        print(user.username);
        if (user.username == username && user.password == password) {
          return user;
        }
      }

      // If no matching user was found, return null.
      return null;
    } else {
      print('Request failed with status: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error: $e');
    return null;
  }
}

Future<User?> login(String username, String password) async {
  final user = await getUserByUsernameAndPassword(username, password);
  if (user != null) {
    print(user.username);
    print(user.gender);
    print(user.email);

    return user;
  } else {
    print('User not found or authentication failed.');
  }
  return null;
}
