import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../single_clg/view/single_clg.dart';
class ClgLisCon extends StatelessWidget {
  const ClgLisCon({
    Key? key,
    required this.width,
    required this.height,
    required this.primaryColor,
    required this.image,
    required this.heading,
  }) : super(key: key);

  final double width;
  final double height;
  final Color primaryColor;
  final String image;
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: width * 0.09, right: width * 0.09, bottom: height * 0.02),
      child: Container(
          height: height * 0.285,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              spreadRadius: -11,
              blurRadius: 33,
              color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.2),
            )
          ], borderRadius: BorderRadius.circular(18), color: Colors.white),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.13,
                width: width,
                child: Stack(children: [
                  SizedBox(
                    height: height * 0.13,
                    width: width,
                    child: Image.asset(
                      image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(
                    left: 15,
                    top: 10,
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.share_outlined,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 15,
                    top: 10,
                    child: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Icon(
                          Icons.bookmark_outline,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                    top: height * 0.012),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              heading,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            SizedBox(height: height * 0.008),
                            SizedBox(
                              width: width * 0.48,
                              child: const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 9, color: Color(0xff8E8E8E)),
                              ),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xff27C200),
                                  borderRadius: BorderRadius.circular(6)),
                              width: width * 0.15,
                              height: height * 0.032,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '4.3',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: width * 0.01),
                                  const Text('★',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => SingleClg());
                              },
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(6)),
                                width: width * 0.20,
                                height: height * 0.035,
                                child: const Text(
                                  'Apply Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.2),
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/like.png'),
                            SizedBox(width: width * 0.01),
                            const Text(
                              'More than 1000+ students have been placed',
                              style: TextStyle(
                                  color: Color(0xff8E8E8E), fontSize: 9),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.remove_red_eye_outlined,
                              size: 18,
                              color: Color(0xff8E8E8E),
                            ),
                            SizedBox(width: width * 0.01),
                            const Text(
                              '468+',
                              style: TextStyle(
                                  color: Color(0xff8E8E8E), fontSize: 9),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
