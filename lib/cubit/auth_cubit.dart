// ignore_for_file: use_build_context_synchronously

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intern2grow/models/user_model.dart';
import 'package:intern2grow/services/auth_service.dart';
import 'package:intern2grow/views/profile_view.dart';
import 'package:intern2grow/widgets/custom_alert_dialog.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  User? user;
  bool inAsyncCall = false;
  Future<User?> login(
      String username, String password, BuildContext context) async {
    inAsyncCall = true;
    emit(AuthLoading());
    user = await getUserByUsernameAndPassword(username, password);
    if (user != null) {
      inAsyncCall = false;
      emit(AuthSuccess());
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileView(),
          ));
      return user;
    } else {
      await showDialog(
        context: context,
        builder: (context) => CustomAlertDialog(
          title: 'Invalid Login',
          message: 'The username or password is incorrect. Please try again.',
          onOkPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      );

      inAsyncCall = false;
      emit(AuthFailure()); // Failed authentication, emit null.
    }
    return null;
  }
}
