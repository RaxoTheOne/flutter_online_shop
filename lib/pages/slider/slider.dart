import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  _ProductSliderState createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
        ),
        items: [
          'assets/images/Ich bin wach! Mehr könnt ihr heute nicht verlangen-Tasche.jpg',
          'assets/images/Ich sitze hier nicht nur rum Ich verschönere den Raum-Tasse.jpg',
          'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg',
          'assets/images/Normale Leute machen mir Angst-Tasse.jpg',
        ].map((item) => Container(
          child: Center(
            child: Image.asset(item, fit: BoxFit.cover, width: 1000),
          ),
        )).toList(),
      ),
    );
  }
}
