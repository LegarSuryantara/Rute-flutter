import 'package:flutter/material.dart';
import 'package:route_fluttter/widgets/footer.dart';

import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Item Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, 
            childAspectRatio: 3 / 4, 
          ),
          children: [
            Column(
              children: [
                Image.asset(
                  item.gambar,
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
                Text(
                  "Item Name: ${item.name}",
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text("Price: ${item.price}"),
                const SizedBox(height: 8),
                Text("Stock: ${item.stock}"), 
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text("${item.rating}", style: TextStyle(fontSize: 16)),
                  ],
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    item.deskripsi,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
                
              ],
            ),
            FooterSection()
          ],
        ),
      ),
    );
  }
}