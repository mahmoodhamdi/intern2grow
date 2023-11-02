import 'package:flutter/material.dart';
import 'package:intern2grow/views/user_view.dart';

void main() {
  runApp(const Intern2Grow());
}

class Intern2Grow extends StatelessWidget {
  const Intern2Grow({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UserView(),
    );
  }
}
