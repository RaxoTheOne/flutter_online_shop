import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/search_section.dart';
import 'package:flutter_online_shop/pages/slider/slider.dart';
import 'custom_appBar.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 20,
              ),
              SearchSection(),
              SizedBox(
                height: 20,
              ),
              ProductSLider(),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
