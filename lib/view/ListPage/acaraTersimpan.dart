import 'package:flutter/material.dart';

class AcaraTersimpan extends StatefulWidget {
  static String route = "/acaraTersimpan";
  @override
  State<AcaraTersimpan> createState() => _AcaraTersimpanState();
}

class _AcaraTersimpanState extends State<AcaraTersimpan> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Acara Tersimpan",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          elevation: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/pohonkosong.png"),
            SizedBox(
              height: 20,
            ),
            Text(
              "Belum ada acara yang disimpan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
            Text("Ayo simpan acara dari halaman anda")
          ],
        ),
      ),
    );
  }
}
