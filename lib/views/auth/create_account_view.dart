import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intern2grow/views/auth/login_view.dart';
import 'package:intern2grow/widgets/custom_button.dart';
import 'package:intern2grow/widgets/custom_password_text_form_field.dart';
import 'package:intern2grow/widgets/custom_stack.dart';
import 'package:intern2grow/widgets/custom_email_text_form_field.dart';
import 'package:intern2grow/widgets/custom_text_form_field.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool value = false;
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height+55,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
                width: double.infinity,
                child: MainStack(
                  imageLink: "assets/images/Rectangle 1136.png",
                ),
              ),
              const SizedBox(
                height: 44,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 345,
                          child: Text(
                            'Create new account',
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
                        CustomEmailTextFormField(
                          fieldTitle: "Email",
                          controller: emailController,
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
                        CustomPasswordTextFormField(
                          fieldTitle: "Password",
                          controller: passwordController,
                          icon: const Icon(
                            FontAwesomeIcons.eyeSlash,
                            color: Color(0xff808194),
                            size: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    activeColor: const Color(0xff007BFF),
                                    shape: const RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Color(0xff808194)),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))),
                                    value: value,
                                    onChanged: (newValue) {
                                      value = newValue!;
                                      setState(() {});
                                    }),
                                const Text(
                                  "Remember me",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff2a2b2e),
                                    height: 17 / 14,
                                  ),
                                  textAlign: TextAlign.left,
                                )
                              ],
                            ),
                            const Text(
                              "Have a problem?",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationThickness: 2.0,
                                decorationColor: Color(0xff4F90F0),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff2a2b2e),
                                height: 17 / 14,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        MainButton(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginView(),
                                  ));
                            }
                          },
                          buttonColor: const Color(0xff007BFF),
                          buttonTitle: "Register",
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Already have an account?',
                              style: TextStyle(
                                color: Color(0xFF2A2B2E),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginView()));
                              },
                              child: const Text(
                                'Log in ',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationThickness: 2.0,
                                  decorationColor: Color(0xFF4F90F0),
                                  color: Color(0xFF2A2B2E),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            )
                          ],
                        )
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
