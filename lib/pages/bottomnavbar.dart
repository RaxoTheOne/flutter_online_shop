import 'package:flutter/material.dart';
import 'package:flutter_online_shop/constants.dart';
import 'package:flutter_online_shop/pages/enam.dart';
import 'package:flutter_online_shop/pages/home_screen.dart';
import 'package:flutter_online_shop/pages/main_pages/favourite_page.dart';
import 'package:flutter_online_shop/pages/main_pages/shopping_cart.dart';
import 'package:flutter_online_shop/pages/main_pages/user.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.selectedMenu,
  });
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inactiveColor = Colors.grey;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFDADADA),
              offset: Offset(0, -15),
              blurRadius: 20,
            ),
          ]),
      child: SafeArea(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home_outlined),
            color:
                MenuState.home == selectedMenu ? kPrimaryColor : inactiveColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => HomeScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite_border_outlined),
            color: MenuState.favourite == selectedMenu
                ? kPrimaryColor
                : inactiveColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => FavouriteScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            color: MenuState.shoppincart == selectedMenu
                ? kPrimaryColor
                : inactiveColor,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (Context) => ShoppingCartScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.person_outlined),
            color: MenuState.profile == selectedMenu
                ? kPrimaryColor
                : inactiveColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (Context) => UserProfileScreen()));
            },
          ),
        ],
      )),
    );
  }
}
