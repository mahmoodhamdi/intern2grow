import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern2grow/views/auth/create_account_view.dart';
import 'package:intern2grow/widgets/custom_button.dart';
import 'package:intern2grow/widgets/custom_stack.dart';
import 'package:intern2grow/widgets/custom_text_form_field.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
                width: double.infinity,
                child: MainStack(
                  imageLink: "assets/images/Rectangle 11367.png",
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                    child: Column(
                  children: [
                    const SizedBox(
                      width: 345,
                      child: Text(
                        'Ahmed Saber',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2A2B2E),
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
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
                    const SizedBox(
                      height: 22,
                    ),
                    CustomTextFormField(
                      fieldTitle: "Email",
                      controller: userNameController,
                      icon: const Icon(
                        FontAwesomeIcons.x,
                        color: Color(0xff808194),
                        size: 8,
                      ),
                      hint: 'ahmed0saber33@gmail.com',
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    CustomTextFormField(
                      fieldTitle: "Gender",
                      controller: userNameController,
                      icon: const Icon(
                        FontAwesomeIcons.x,
                        color: Color(0xff808194),
                        size: 8,
                      ),
                      hint: 'Male',
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    MainButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateAccountView(),
                            ));
                      },
                      buttonColor: const Color(0XFFDC3545),
                      buttonTitle: "Log out",
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
