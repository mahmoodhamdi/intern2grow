import 'package:flutter/material.dart';

class MainStack extends StatelessWidget {
  const MainStack({
    super.key, required this.imageLink,
  });
 final String imageLink;
  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        decoration: const BoxDecoration(color: Colors.amberAccent),
      ),
      Positioned(
        top: 183.5,
        right: MediaQuery.of(context).size.width / 2.9,
        child: Container(
          width: 116,
          height: 116,
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(),
            shadows: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 10,
                offset: Offset(0, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Image.asset(imageLink),
        ),
      ),
    ]);
  }
}
