import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onOkPressed;

  const CustomAlertDialog({
    super.key,
    required this.title,
    required this.message,
    required this.onOkPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blue, // Customize the title color
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black, // Customize the message color
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: onOkPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                Colors.blue), // Customize the button background color
          ),
          child: const Center(
            child: Text(
              'OK',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white, // Customize the button text color
              ),
            ),
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(20), // Customize the dialog's border radius
      ),
      backgroundColor:
          Colors.purple[100], // Customize the dialog's background color
    );
  }
}
