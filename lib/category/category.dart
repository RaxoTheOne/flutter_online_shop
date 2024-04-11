import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(
            image: 'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg',
            text: 'Tassen',
            press: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            image: 'assets/images/Ich bin wach! Mehr könnt ihr heute nicht verlangen-Tasche.jpg',
            text: 'Taschen',
            press: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            image: 'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg',
            text: 'Kissen',
            press: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            image: 'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg',
            text: 'Schlüsselanhänger',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    super.key,
    required this.image,
    required this.text,
    required this.press,
  });
  final String image, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child: Chip(
            backgroundColor: kPrimaryColor,
              label: Row(
            children: [
              Image.asset(
                image,
                height: 40,
              ),
              SizedBox(
                width: 20,
              ),
              Text(text),
            ],
          )),
        ),
      ),
    );
  }
}
