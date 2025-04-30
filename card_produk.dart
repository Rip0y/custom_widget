import 'package:flutter/material.dart';

class CardProduk extends StatelessWidget {
  final String namaProduk;
  final int harga;
  final int stok;

  const CardProduk({
    super.key,
    required this.namaProduk,
    required this.harga,
    required this.stok,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // penting agar card tidak terlalu tinggi
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFFE0E0E0),
              radius: 30,
              child: Icon(Icons.image_not_supported, size: 28, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            Text(
              namaProduk,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Text("Harga : $harga", style: const TextStyle(fontSize: 12)),
            Text("Stok : $stok", style: const TextStyle(fontSize: 12)),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star_border, size: 16),
                Icon(Icons.star_border, size: 16),
                Icon(Icons.star_border, size: 16),
              ],
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Berhasil membeli $namaProduk')),
                );
              },
              child: const Text("Beli", style: TextStyle(fontSize: 12)),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(80, 30),
                padding: const EdgeInsets.symmetric(horizontal: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}