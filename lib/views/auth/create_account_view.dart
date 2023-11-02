import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern2grow/widgets/custom_password_text_form_field.dart';
import 'package:intern2grow/widgets/custom_text_form_field.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Stack(clipBehavior: Clip.none, children: [
              Container(
                decoration: const BoxDecoration(color: Colors.amberAccent),
              ),
              Positioned(
                top: 183.5,
                left: MediaQuery.of(context).size.width / 3,
                child: Center(
                  child: Image.asset("assets/images/Rectangle 1136.png"),
                ),
              ),
            ]),
          ),
          const Text(
            "Create new account",
            style: TextStyle(
              fontFamily: "Inter",
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff2a2b2e),
              height: 24 / 20,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                child: Column(
              children: [
                CustomTextFormField(
                  fieldTitle: "Username",
                  controller: userNameController,
                  icon: const Icon(
                    FontAwesomeIcons.x,
                    color: Color(0xff808194),
                    size: 8,
                  ),
                  hint: 'ahmed0saber',
                ),
                CustomTextFormField(
                  fieldTitle: "Email",
                  controller: emailController,
                  icon: const Icon(
                    FontAwesomeIcons.x,
                    color: Color(0xff808194),
                    size: 8,
                  ),
                  hint: 'ahmed0saber',
                ),
                CustomPasswordTextFormField(
                  fieldTitle: "Password",
                  controller: passwordController,
                  icon: const Icon(
                    FontAwesomeIcons.eyeSlash,
                    color: Color(0xff808194),
                    size: 16,
                  ),
                  hint: 'ahmed0saber',
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
