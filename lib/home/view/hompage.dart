import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).colorScheme.primary;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: width * 0.07),
        color: primaryColor,
        height: 65,
        width: width,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 31,
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                  SizedBox(height: height * 0.005),
                  const SizedBox(
                    width: 50,
                    child: Divider(
                      color: Colors.white,
                      height: 5,
                      thickness: 3,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.bookmark,
                    color: Color(0xffBBBBBB),
                    size: 31,
                  ),
                  Text(
                    'saved',
                    style: TextStyle(fontSize: 10, color: Color(0xffBBBBBB)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.savings_outlined,
                    color: Color(0xffBBBBBB),
                    size: 31,
                  ),
                  Text(
                    'saved',
                    style: TextStyle(fontSize: 10, color: Color(0xffBBBBBB)),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    CupertinoIcons.person_fill,
                    color: Color(0xffBBBBBB),
                    size: 31,
                  ),
                  Text(
                    'account',
                    style: TextStyle(fontSize: 10, color: Color(0xffBBBBBB)),
                  ),
                ],
              ),
            ]),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                right: width * 0.09,
                left: width * 0.09,
                top: height * 0.05,
                bottom: height * 0.03),
            height: height * 0.28,
            width: double.infinity,
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Find your own way',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Search in 600 colleges around',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
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
          SizedBox(height: height * 0.025),
          Container(
            height: (height * 0.58),
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PictureContainer(
                  width: width,
                  height: height,
                  image: 'assets/images/rect1.png',
                  title: 'Top Colleges',
                  subtitle:
                      'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                  rich1: '+126',
                  rich2: ' Colleges',
                ),
                PictureContainer(
                  width: width,
                  height: height,
                  image: 'assets/images/rect3.png',
                  title: 'Top Schools',
                  subtitle:
                      'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                  rich1: '+106',
                  rich2: ' Schools',
                ),
                PictureContainer(
                  width: width,
                  height: height,
                  image: 'assets/images/rect2.png',
                  title: 'Exams',
                  subtitle:
                      'Find an end to end information about the exams that are happening in India',
                  rich1: '+16',
                  rich2: ' Exams',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
  }) : super(key: key);

  final double width;
  final double height;
  final String image;
  final String title;
  final String subtitle;
  final String rich1;
  final String rich2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.86,
      height: height * 0.18,
      child: Stack(
        children: [
          Container(
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
    );
  }
}
