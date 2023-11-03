import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
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
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: const TextStyle(
            color: Color(0xFF808194),
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '$fieldTitle is required';
            }
            // Regular expression for a more comprehensive email validation

            return null; // Return null if the input is valid
          },
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(
                fontFamily: "Inter",
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff2a2b2e),
                height: 17 / 14,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    controller.clear();
                  },
                  icon: CircleAvatar(
                    backgroundColor: const Color(0xff808194),
                    maxRadius: 9,
                    child: CircleAvatar(
                        radius: 8, backgroundColor: Colors.white, child: icon),
                  )),
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16)))),
          controller: controller,
        ),
      ],
    );
  }
}
