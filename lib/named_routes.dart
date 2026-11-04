import 'package:flutter/material.dart';

class NamedBeranda extends StatelessWidget {
  const NamedBeranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/named-profil'),
              child: const Text('Ke Profil'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                '/named-detail',
                arguments: 'Amelia', // satu argumen yang dikirim
              ),
              child: const Text('Ke Detail (kirim nama)'),
            ),
          ],
        ),
      ),
    );
  }
}

class NamedProfil extends StatelessWidget {
  const NamedProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}

class NamedDetail extends StatelessWidget {
  const NamedDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final nama = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text(nama)),
      body: Center(
        child: Text('Halo, $nama!', style: const TextStyle(fontSize: 22)),
      ),
    );
  }
}