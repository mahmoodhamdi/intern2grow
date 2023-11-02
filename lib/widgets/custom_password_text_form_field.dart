import 'package:flutter/material.dart';

class CustomPasswordTextFormField extends StatefulWidget {
  const CustomPasswordTextFormField({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    required this.fieldTitle,
  });

  final TextEditingController controller;
  final String hint;
  final Icon icon;
  final String fieldTitle;

  @override
  State<CustomPasswordTextFormField> createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldTitle,
          style: const TextStyle(
            fontFamily: "Inter",
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff808194),
            height: 17 / 14,
          ),
          textAlign: TextAlign.left,
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: const TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff2a2b2e),
                height: 17 / 14,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    if (obscureText == true) {
                      obscureText = false;
                    } else {
                      obscureText = true;
                    }
                    setState(() {});
                  },
                  icon: widget.icon),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)))),
          controller: widget.controller,
        ),
      ],
    );
  }
}