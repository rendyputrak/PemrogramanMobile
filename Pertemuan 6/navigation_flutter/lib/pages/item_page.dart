import 'package:flutter/material.dart';
import 'package:navigation_flutter/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Page'),
      ),
      body: Center(
        child: Text('Detail Item'),
      ),
    );
  }
}
