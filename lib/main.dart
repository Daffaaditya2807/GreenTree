import 'package:e_forest/view/ListPage/acaraTersimpan.dart';
import 'package:e_forest/view/acara.dart';
import 'package:e_forest/view/donasi.dart';
import 'package:e_forest/view/dukungan.dart';
import 'package:e_forest/view/halaman_utama.dart';
import 'package:e_forest/view/kolaborasi.dart';
import 'package:e_forest/view/komunitas.dart';
import 'package:e_forest/view/login.dart';
import 'package:e_forest/view/rincian_acara.dart';
import 'package:e_forest/view/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forest',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.route.toString(),
      routes: {
        SplashScreen.route.toString(): (context) => SplashScreen(),
        Login.route.toString(): (context) => Login(),
        HalamanUtama.route.toString(): (context) => HalamanUtama(),
        RincianAcara.route.toString(): (context) => RincianAcara(),
        Donasi.route.toString(): (context) => Donasi(),
        Acara.route.toString(): (context) => Acara(),
        Dukungan.route.toString(): (context) => Dukungan(),
        Komunitas.route.toString(): (context) => Komunitas(),
        AcaraTersimpan.route.toString(): (context) => AcaraTersimpan(),
        Kolaborasi.route.toString(): (context) => Kolaborasi()
      },
    );
  }
}
