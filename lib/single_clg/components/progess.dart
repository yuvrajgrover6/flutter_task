import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({
    Key? key,
    required this.width,
    required this.primaryColor,
  }) : super(key: key);

  final double width;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: width * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 4,
              backgroundColor: Color(0xffC4C4C4),
            ),
            SizedBox(width: width * 0.01),
            const CircleAvatar(
              radius: 4,
              backgroundColor: Color(0xffC4C4C4),
            ),
            SizedBox(width: width * 0.01),
            CircleAvatar(
              radius: 4,
              backgroundColor: primaryColor,
            ),
            SizedBox(width: width * 0.01),
            const CircleAvatar(
              radius: 4,
              backgroundColor: Color(0xffC4C4C4),
            ),
            SizedBox(width: width * 0.01),
            const CircleAvatar(
              radius: 4,
              backgroundColor: Color(0xffC4C4C4),
            ),
            SizedBox(width: width * 0.01),
            const CircleAvatar(
              radius: 4,
              backgroundColor: Color(0xffC4C4C4),
            ),
            SizedBox(width: width * 0.01),
            const CircleAvatar(
              radius: 4,
              backgroundColor: Color(0xffC4C4C4),
            ),
            SizedBox(width: width * 0.01),
          ],
        ),
      ),
    );
  }
}
