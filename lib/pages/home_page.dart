
import 'package:flutter/material.dart';

import '../models/item.dart';
import '../widgets/footer.dart';
import '../widgets/hero.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: "Sugar", price: 5000, deskripsi: "Nikmati manisnya setiap momen dengan Gula Murni Pilihan. Dibuat dari tebu berkualitas tinggi, gula kami memberikan rasa manis alami yang sempurna untuk berbagai keperluan dapur Anda. Baik untuk membuat minuman, kue, atau masakan, gula ini larut sempurna dan menghasilkan rasa yang konsisten.", gambar: "../assets/images/gula.jpg", stock: 42, rating: 5),
    Item(name: "Salt", price: 2000, deskripsi: "Lengkapi kelezatan masakan Anda dengan Garam Halus Premium, garam berkualitas yang diambil langsung dari sumber terbaik. Dengan butiran halus dan kemurnian tinggi, garam ini memberikan rasa asin yang pas untuk semua jenis masakan, dari yang sederhana hingga yang istimewa.", gambar: "../assets/images/garam.jpg", stock: 35, rating: 4),
    Item(name: "Mie", price: 3500, deskripsi: "Lengkapi kelezatan masakan Anda dengan Garam Halus Premium, garam berkualitas yang diambil langsung dari sumber terbaik. Dengan butiran halus dan kemurnian tinggi, garam ini memberikan rasa asin yang pas untuk semua jenis masakan, dari yang sederhana hingga yang istimewa.", gambar: "../assets/images/mie.jpg", stock: 43, rating: 5),
    Item(name: "Kopi", price: 2500, deskripsi: "Nikmati aroma dan cita rasa khas yang hanya bisa Anda temukan di Kopi Arabika Premium. Terbuat dari biji kopi pilihan yang dipetik langsung dari perkebunan berkualitas tinggi, kopi ini menghadirkan rasa lembut, kaya, dan beraroma kuat di setiap tegukan.", gambar: "../assets/images/kopi.jpeg", stock: 12, rating: 4),
    Item(name: "Teh", price: 1000, deskripsi: "Rasakan kesegaran alami di setiap tegukan dengan Teh Hijau Premium. Dibuat dari daun teh pilihan yang dipetik dengan hati-hati, teh ini memberikan aroma yang harum dan rasa yang lembut, sempurna untuk dinikmati kapan saja. Kaya akan antioksidan, Teh Hijau Premium juga bermanfaat untuk kesehatan tubuh Anda.", gambar: "../assets/images/teh.jpg", stock: 67, rating: 3 ),
    Item(name: "Telur", price: 5000, deskripsi: "Dapatkan Telur Ayam Segar berkualitas tinggi yang sempurna untuk kebutuhan harian Anda. Diproduksi dari ayam sehat dan diproses dengan standar kebersihan terbaik, telur ini kaya akan protein dan nutrisi penting untuk mendukung pola makan sehat keluarga Anda.", gambar: "../assets/images/telur.jpg", stock: 12, rating: 3),
    Item(name: "Micin", price: 500, deskripsi: "Tambahkan cita rasa gurih yang menggugah selera ke setiap hidangan dengan Micin Berkualitas. Micin atau MSG ini dirancang khusus untuk memberikan rasa umami yang seimbang pada masakan Anda, menjadikannya lebih lezat dan nikmat tanpa mengubah rasa aslinya.", gambar: "../assets/images/micin.jpeg", stock: 19, rating: 5),

  ];

 HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            HeroSection(),
            const SizedBox(height: 8), 
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/item', arguments: item);
                    },
                    child: Card(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Hero(
                              tag: item.name,
                              child: Image.asset(
                                item.gambar,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(child: Text(item.name)),
                            Expanded(
                              child: Text(
                                item.price.toString(),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            FooterSection()
          ],
        ),
      ),
    );
  }
}