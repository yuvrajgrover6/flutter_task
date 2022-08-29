import 'package:flutter/material.dart';

class PictureContainer extends StatelessWidget {
  const PictureContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rich1,
    required this.rich2,
    required this.onTap,
  }) : super(key: key);

  final double width;
  final double height;
  final String image;
  final String title;
  final String subtitle;
  final String rich1;
  final String rich2;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: width * 0.86,
        height: height * 0.18,
        child: Stack(
          children: [
            SizedBox(
              width: width * 0.86,
              height: height * 0.2,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05, vertical: height * 0.02),
              width: width * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    subtitle,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontSize: 11,
                        height: 1.4,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Positioned(
                right: width * -0.0002,
                bottom: 10,
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: rich1,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w800)),
                  TextSpan(
                      text: rich2,
                      style: const TextStyle(
                          color: Color(0xff848484),
                          fontSize: 9,
                          fontWeight: FontWeight.w600))
                ])))
          ],
        ),
      ),
    );
  }
}
