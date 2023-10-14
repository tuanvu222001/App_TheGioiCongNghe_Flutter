import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish/screens/My_home/home/components/section_title.dart';
import 'package:stylish/size_config.dart';

class CarouselSliderWithDots extends StatefulWidget {
  const CarouselSliderWithDots({Key? key}) : super(key: key);

  @override
  State<CarouselSliderWithDots> createState() => _CarouselSliderWithDotsState();
}

class _CarouselSliderWithDotsState extends State<CarouselSliderWithDots> {
  late int _current;
  List<String> imgList = [
    "https://cdn.tgdd.vn//News/1521979//image-2023-03-28T214210.689-730x410.jpg",
    "https://didongviet.vn/dchannel/wp-content/uploads/2023/07/iphone-15-1-1.jpg",
    "https://cdn.sforum.vn/sforum/wp-content/uploads/2023/09/z4689439052614_a8575061cea02f8775e046aa73c91afb.jpg",
    "https://cdn.sforum.vn/sforum/wp-content/uploads/2023/09/z4689433443285_37436798a24d74fa51a0212ca6c0fe3b.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "THẾ GIỚI CÔNG NGHỆ",
            style: TextStyle(
                fontSize: 32,
                color: Color.fromARGB(255, 181, 41, 232),
                fontWeight: FontWeight.bold,
                fontFamily: "DancingScript"),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Container(
            child: CarouselSlider(
          options: CarouselOptions(
            initialPage: 0,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            autoPlay: true, // Bật chế độ tự động chuyển đổi
            autoPlayInterval:
                Duration(seconds: 3), // Thời gian giữa mỗi lần chuyển đổi
            autoPlayAnimationDuration:
                Duration(milliseconds: 800), // Thời gian chuyển đổi
            autoPlayCurve: Curves.fastOutSlowIn, // Hiệu ứng chuyển đổi
          ),
          items: imgList.map((imgURL) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(20.0), // Đặt bán kính bo tròn
                    child: Image.network(imgURL, fit: BoxFit.cover),
                  ),
                );
              },
            );
          }).toList(),
        )),
      ],
    );
  }
}
