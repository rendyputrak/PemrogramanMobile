import 'package:flutter/material.dart';
import 'package:navigation_flutter/models/item.dart';
import 'package:navigation_flutter/widgets/list_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
          name: 'Sugar',
          price: 5000,
          image: 'assets/gula.jpeg',
          stock: 40,
          rating: 5.0),
      Item(
          name: 'Salt',
          price: 2000,
          image: 'assets/salt.jpeg',
          stock: 14,
          rating: 4.0)
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListViewWidget(items: items),
    );
  }
}
