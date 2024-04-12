import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/bottomnavbar.dart';
import 'package:flutter_online_shop/pages/enam.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProfileScreen'),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
