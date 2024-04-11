import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants.dart';
import 'package:flutter_online_shop/pages/enam.dart';
import 'package:flutter_online_shop/pages/home_body.dart';
import 'package:flutter_online_shop/pages/bottomnavbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: HomeBody(),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home,
      ),
    );
  }
}


