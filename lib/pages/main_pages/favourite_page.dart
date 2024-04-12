import 'package:flutter/material.dart';
import 'package:flutter_online_shop/pages/bottomnavbar.dart';
import 'package:flutter_online_shop/pages/enam.dart';

class Product {
  final String name;
  final String assteName;

  Product({required this.name, required this.assteName});
}

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<Product> favouriteProducts = [
    Product(
        name: 'Produkt 1',
        assteName: 'assets/images/Nerv Nicht Geh in die Wüste-Tasse.jpg'),
    Product(
        name: 'Produkt 2',
        assteName: 'assets/images/Normale Leute machen mir Angst-Tasse.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FavouriteScreen'),
      ),
      body: ListView.builder(
        itemCount: favouriteProducts.length,
        itemBuilder: (context, index) {
          return ListTile(
            minTileHeight: 100,
            leading: Image.asset(favouriteProducts[index].assteName),
            title: Text(favouriteProducts[index].name),
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}
