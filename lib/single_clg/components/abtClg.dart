import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AbtClg extends StatelessWidget {
  const AbtClg({
    Key? key,
    required this.width,
    required this.height,
    required this.primaryColor,
  }) : super(key: key);

  final double width;
  final double height;
  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.035),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: height * 0.02),
          const Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(height: height * 0.015),
          const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',
              style: TextStyle(fontSize: 14, color: Color(0xff969797))),
          SizedBox(height: height * 0.02),
          const Text(
            'Location',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          SizedBox(height: height * 0.018),
          Image.asset('assets/images/Background.png'),
          SizedBox(height: height * 0.02),
          const Text(
            'Student Review',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          Row(
            children: [
              SizedBox(
                width: width * 0.74,
                height: height * 0.1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: width * 0.02, vertical: height * 0.02),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://source.unsplash.com/random/?student'),
                              fit: BoxFit.cover)),
                    );
                  },
                ),
              ),
              Container(
                width: width * 0.15,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color(0xffE7E6E6),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text('+12',
                      style: TextStyle(
                          color: primaryColor, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.04, vertical: height * 0.015),
            width: width * 0.9,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(3, 3),
                    spreadRadius: -5,
                    blurRadius: 20,
                    color: const Color.fromRGBO(0, 0, 0, 1).withOpacity(0.2),
                  )
                ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Arun sai',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: height * 0.008),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.',
                style: TextStyle(
                    color: Color(0xff8E8E8E),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: height * 0.01),
              RatingBar.builder(
                initialRating: 4.5,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
            ]),
          ),
          SizedBox(height: height * 0.1)
        ],
      ),
    );
  }
}
