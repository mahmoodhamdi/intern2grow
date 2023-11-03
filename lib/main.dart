import 'package:flutter/material.dart';
import 'package:intern2grow/views/auth/create_account_view.dart';

void main() {
  runApp(const Intern2Grow());
}

class Intern2Grow extends StatelessWidget {
  const Intern2Grow({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Inter"),
      home: const CreateAccountView(),
    );
  }
}
