import 'package:flutter/material.dart';
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
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 20,
              ),
              SearchBar(),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
