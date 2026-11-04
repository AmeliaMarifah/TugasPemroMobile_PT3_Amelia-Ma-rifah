import 'package:flutter/material.dart';
import 'menu_tugas.dart';
import 'push_pop.dart';
import 'kirim_data.dart';
import 'named_routes.dart';
import 'bottom_navigation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 3 Navigasi & Routing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF6259C8),
        scaffoldBackgroundColor: const Color(0xFFF6F5FF),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MenuTugas(),
        '/latihan1': (context) => const PushPopBeranda(),
        '/latihan2': (context) => const DaftarProduk(),
        '/named-beranda': (context) => const NamedBeranda(),
        '/named-profil': (context) => const NamedProfil(),
        '/named-detail': (context) => const NamedDetail(),
        '/bonus': (context) => const HalamanUtama(),
      },
    );
  }
}