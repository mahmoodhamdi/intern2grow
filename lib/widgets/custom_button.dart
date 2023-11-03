import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key, required this.buttonTitle, required this.buttonColor,
  });
 final String buttonTitle;
 final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44,
      decoration:   BoxDecoration(
          color:buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child:   Center(
        child: Text(
         buttonTitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
