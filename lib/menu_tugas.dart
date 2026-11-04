import 'package:flutter/material.dart';

class MenuTugas extends StatelessWidget {
  const MenuTugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const SizedBox(height: 15),

            const Text(
              'HALO, SELAMAT DATANG!',
              style: TextStyle(
                color: Color(0xFF6259C8),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Tugas 3\nNavigasi & Routing',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF29264A),
                height: 1.3,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Latihan mandiri pemrograman mobile menggunakan Flutter.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 25),

            // Kartu Latihan 1
            kartuTugas(
              context,
              nomor: '01',
              judul: 'Push & Pop',
              deskripsi: 'Navigasi Beranda dan Tentang',
              icon: Icons.swap_horiz_rounded,
              warna: const Color(0xFFECEBFF),
              route: '/latihan1',
            ),

            // Kartu Latihan 2
            kartuTugas(
              context,
              nomor: '02',
              judul: 'Kirim Data',
              deskripsi: 'Daftar dan detail produk',
              icon: Icons.shopping_bag_outlined,
              warna: const Color(0xFFE2F5F0),
              route: '/latihan2',
            ),

            // Kartu Latihan 3
            kartuTugas(
              context,
              nomor: '03',
              judul: 'Named Routes',
              deskripsi: 'Navigasi dengan nama route',
              icon: Icons.alt_route_rounded,
              warna: const Color(0xFFFFF0DF),
              route: '/named-beranda',
            ),

            // Kartu Bonus
            kartuTugas(
              context,
              nomor: '04',
              judul: 'BottomNavigationBar',
              deskripsi: 'Navigasi tiga menu utama',
              icon: Icons.dashboard_outlined,
              warna: const Color(0xFFFFE8EF),
              route: '/bonus',
              bonus: true,
            ),

            const SizedBox(height: 20),

            const Center(
              child: Text(
                'Pemrograman Mobile • Tugas 3',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget kartuTugas(
      BuildContext context, {
        required String nomor,
        required String judul,
        required String deskripsi,
        required IconData icon,
        required Color warna,
        required String route,
        bool bonus = false,
      }) {
    return Card(
      color: Colors.white,
      elevation: 1,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: warna,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(
            icon,
            color: const Color(0xFF6259C8),
            size: 27,
          ),
        ),
        title: Row(
          children: [
            Text(
              nomor,
              style: const TextStyle(
                color: Color(0xFF6259C8),
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                judul,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xFF29264A),
                ),
              ),
            ),
            if (bonus)
              const Text(
                'BONUS',
                style: TextStyle(
                  color: Color(0xFF6259C8),
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            deskripsi,
            style: const TextStyle(fontSize: 12),
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 16,
          color: Color(0xFF6259C8),
        ),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}