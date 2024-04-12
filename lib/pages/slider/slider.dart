import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: [
            'assets/images/Ich bin wach! Mehr könnt ihr heute nicht verlangen-Tasche.jpg',
            'assets/images/Ich sitze hier nicht nur rum Ich verschönere den Raum-Tasse.jpg',
            'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg',
            'assets/images/Normale Leute machen mir Angst-Tasse.jpg',
          ]
              .map((item) => ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Center(
                      child: Image.asset(item, fit: BoxFit.cover, width: 800),
                    ),
                  ))
              .toList(),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) => buildDot(index: index)),
          ),
        ),
      ],
    );
  }

  Widget buildDot({required int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.only(right: 5),
      height: 10,
      width: _current == index ? 20 : 10,
      decoration: BoxDecoration(
        color: _current == index
            ? kPrimaryColor
            : kPrimaryColor, // Verwenden Sie hier kPrimaryColor
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
