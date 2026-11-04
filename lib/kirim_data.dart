import 'package:flutter/material.dart';

class Produk {
  final String nama;
  final int harga;
  const Produk(this.nama, this.harga);
}

const daftarProdukData = [
  Produk('Laptop', 8500000),
  Produk('Smartphone', 4200000),
  Produk('Headphone', 750000),
];

class DaftarProduk extends StatelessWidget {
  const DaftarProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Produk')),
      body: ListView.builder(
        itemCount: daftarProdukData.length,
        itemBuilder: (context, i) {
          final p = daftarProdukData[i];
          return ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: Text(p.nama),
            subtitle: Text('Rp ${p.harga}'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailProduk(produk: p)),
            ),
          );
        },
      ),
    );
  }
}

class DetailProduk extends StatelessWidget {
  final Produk produk;
  const DetailProduk({super.key, required this.produk});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produk.nama)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Nama: ${produk.nama}',
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text('Harga: Rp ${produk.harga}',
                style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}