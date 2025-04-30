import 'package:custom_widget/componen/card_produk.dart';
import 'package:custom_widget/componen/widget.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final String email;

  const MyWidget({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: CustomButton(
          text: "LIQUID",
          onPressed: () {},
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          const SizedBox(height: 18),
          Center(
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 160,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CircleAvatar(
                      radius: 250,
                      backgroundColor: const Color.fromARGB(255, 4, 45, 228),
                      child: const Icon(Icons.person, size: 145, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  email,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: const [
              Expanded(
                child: CardProduk(
                  namaProduk: "RED APPLE",
                  harga: 120000,
                  stok: 8,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CardProduk(
                  namaProduk: "GREEN KIWI",
                  harga: 120000,
                  stok: 11,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              Expanded(
                child: CardProduk(
                  namaProduk: "PARADEWA GRAPE",
                  harga: 160000,
                  stok: 88,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CardProduk(
                  namaProduk: "PARADEWA MANGO",
                  harga: 170000,
                  stok: 101,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: const [
              Expanded(
                child: CardProduk(
                  namaProduk: "MAKNA V2",
                  harga: 180000,
                  stok: 102,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CardProduk(
                  namaProduk: "MAKNA V1",
                  harga: 180000,
                  stok: 150,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}