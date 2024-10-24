import 'package:flutter/material.dart';
import '../models/item.dart';

class ListViewWidget extends StatelessWidget {
  final List<Item> items;

  const ListViewWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah kolom dalam grid
            childAspectRatio: 0.8, // Rasio lebar dan tinggi elemen grid
            crossAxisSpacing: 8, // Jarak antara kolom
            mainAxisSpacing: 8, // Jarak antara baris
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item,
                );
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'imageHero-${item.name}',
                      child: Image.network(item.image),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item.name),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Price: ${item.price}'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Stock: ${item.stock}'),
                    ),
                    Row(
                      children: List.generate(
                        item.rating.round(),
                        (index) => Icon(Icons.star, color: Colors.amber),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: buildFooter(), // Footer ditaruh di sini
    );
  }

  Widget buildFooter() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Text(
        'Rendy Putra Kusuma / 2241720124',
        style: TextStyle(color: Colors.black),
        textAlign: TextAlign.center,
      ),
    );
  }
}
