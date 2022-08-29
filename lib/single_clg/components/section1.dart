import 'package:flutter/material.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: height * 0.23,
            width: width,
            child: Image.asset(
              'assets/images/unsplash_e7eqKQkpk_8.png',
              fit: BoxFit.fill,
            )),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.03, vertical: height * 0.015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'GHJK Engineering college',
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: height * 0.01),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.',
                      style:
                          TextStyle(color: Color(0xff8E8E8E), fontSize: 12),
                    )
                  ],
                ),
              ),
              Container(
                height: height * 0.09,
                width: width * 0.12,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: const Color(0xff27C200),
                    borderRadius: BorderRadius.circular(6)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      '4.3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '★',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}