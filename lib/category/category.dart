import 'package:flutter/material.dart';

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
            image: 'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg',
            text: 'Tassen',
            press: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            image: 'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg',
            text: 'Tassen',
            press: () {},
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            image: 'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg',
            text: 'Tassen',
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
              label: Row(
            children: [
              Text(text),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                image,
                height: 40,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
