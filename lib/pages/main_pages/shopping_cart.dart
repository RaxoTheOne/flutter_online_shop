import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/bottomnavbar.dart';
import 'package:flutter_online_shop/pages/enam.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShoppingCartScreen'),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.shoppincart,
      ),
    );
  }
}
