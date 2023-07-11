import 'package:flutter/material.dart';

class Kolaborasi extends StatefulWidget {
  static String route = "/kolaborasi";
  @override
  State<Kolaborasi> createState() => _KolaborasiState();
}

class _KolaborasiState extends State<Kolaborasi> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Kolaborasi",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Text(
              "Mari Bergabung Menjadi Salah Satu Kolaborator Green Tree",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
                "Biarkan Green Tree mengurus semua rancangan, laporan dan program penghijauan untuk brand anda"),
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/pertamina.png"),
                        Image.asset("assets/pln.png"),
                        Image.asset("assets/bri.png")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/ojk.png"),
                        Image.asset("assets/pupuk.png"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Terima Kasih",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "Atas Dukungan dan Support dalam pengembangan aplikasi , agar berjalann dengan baik dan lancar sesuai dengan harapan konsumen",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    minimumSize: Size.fromHeight(55),
                    backgroundColor: Colors.black),
                child: Text("Gabung")),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
