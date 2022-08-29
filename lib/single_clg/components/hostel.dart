import 'package:flutter/material.dart';
import 'package:flutter_task/single_clg/components/progess.dart';

class Hostel extends StatelessWidget {
  const Hostel({
    Key? key,
    required this.height,
    required this.width,
    required this.primaryColor,
  }) : super(key: key);

  final double height;
  final double width;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: height * 0.02),
        child: Column(
          children: [
            SizedBox(
                width: width * 0.87,
                height: 31,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.012),
                      width: 69,
                      height: 31,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/bed (3).png'),
                          SizedBox(width: width * 0.02),
                          const Text(
                            '4',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.012),
                      width: 69,
                      height: 31,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/bed (3).png',
                            color: Colors.black,
                          ),
                          SizedBox(width: width * 0.02),
                          const Text('3'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.012),
                      width: 69,
                      height: 31,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/bed (3).png',
                            color: Colors.black,
                          ),
                          SizedBox(width: width * 0.02),
                          const Text('2')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.012),
                      width: 69,
                      height: 31,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/bed (3).png',
                            color: Colors.black,
                          ),
                          SizedBox(width: width * 0.02),
                          const Text('1')
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(height: height * 0.03),
            Container(
              margin: EdgeInsets.only(left: width * 0.05),
              width: width,
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: width * 0.04),
                    width: width * 0.35,
                    height: 50,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://source.unsplash.com/random/?hostel'),
                            fit: BoxFit.cover)),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.03),
            Progress(width: width, primaryColor: primaryColor),
            SizedBox(height: height * 0.03),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'GHJK Engineering Hostel',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 52,
                    height: 22,
                    decoration: BoxDecoration(
                        color: const Color(0xff27C200),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            '4.3',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: width * 0.02),
                          const Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              '★',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.01),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Row(children: [
                Icon(
                  Icons.pin_drop_outlined,
                  color: primaryColor,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur',
                  style: TextStyle(color: Color(0xff4A4A4A), fontSize: 12),
                )
              ]),
            ),
            SizedBox(height: height * 0.015),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
                style: TextStyle(color: Color(0xff969797)),
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Facilities',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      )),
                  SizedBox(height: height * 0.015),
                  Row(
                    children: const [
                      Text(
                        '🏢  ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'College in 400mtrs',
                        style:
                            TextStyle(color: Color(0xff4A4A4A), fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(height: height * 0.015),
                  Row(
                    children: const [
                      Text(
                        '🛁  ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Bathrooms : 2',
                        style:
                            TextStyle(color: Color(0xff4A4A4A), fontSize: 14),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.1),
          ],
        ));
  }
}
