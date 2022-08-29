import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/shared/bottom_navbar.dart';
import '../components/colgLisCon.dart';

class CollegeList extends StatelessWidget {
  const CollegeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
          width: width, primaryColor: primaryColor, height: height),
      body: Column(children: [
        Container(
          padding: EdgeInsets.only(
              right: width * 0.09,
              left: width * 0.09,
              top: height * 0.04,
              bottom: height * 0.03),
          height: height * 0.18,
          width: width,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.03),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: width * 0.65,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: width * 0.1,
                              child: const Icon(CupertinoIcons.search,
                                  size: 20, color: Color(0xffD6D6D6))),
                          SizedBox(
                            width: width * 0.55,
                            child: const TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    color: Color(0xffD6D6D6)),
                                hintText: 'Search for Colleges,school......',
                              ),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(width: width * 0.03),
                  Container(
                    height: 50,
                    width: width * 0.14,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: Icon(
                      CupertinoIcons.mic_fill,
                      color: primaryColor,
                    )),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: width,
              height: height * 0.035,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: height * 0.035,
                    margin: EdgeInsets.symmetric(
                        horizontal: width * 0.02, vertical: 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.29)),
                        borderRadius: BorderRadius.circular(5)),
                    width: width * .35,
                    child: const Text(
                      'MVSH Engineering college',
                      style: TextStyle(fontSize: 10),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: height * 0.02),
            ClgLisCon(
                width: width,
                height: height,
                primaryColor: primaryColor,
                image: 'assets/images/clg1.png',
                heading: 'GHJK Engineering college'),
            ClgLisCon(
                width: width,
                height: height,
                primaryColor: primaryColor,
                image: 'assets/images/clg2.png',
                heading: 'Bachelor of Technology'),
          ],
        ),
      ]),
    );
  }
}

