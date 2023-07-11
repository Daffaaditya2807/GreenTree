import 'package:e_forest/view/donasi.dart';
import 'package:flutter/material.dart';

class RincianAcara extends StatefulWidget {
  static String route = "/rincianAcara";
  @override
  State<RincianAcara> createState() => _RincianAcaraState();
}

class _RincianAcaraState extends State<RincianAcara> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 117, 164, 136),
      appBar: AppBar(
        title: Text("Acara"),
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 117, 164, 136),
        leadingWidth: 25,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: ListView(
                    children: [
                      Container(
                        width: 200,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/pohonn.png")),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Investasi Pohon untuk Bumi",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("Dibuat oleh :"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              minRadius: 15,
                              backgroundImage:
                                  AssetImage("assets/greentreelogo.png"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Green Tree",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Text(
                        "Detail Lokasi dan Jenis",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 117, 164, 136),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lokasi",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text("Desa Mangun Kerso",
                                  style: TextStyle(color: Colors.white)),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Jenis Pohon",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text("Pohon Brambang",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Sumbangan & Pelaksanaan",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Batas Donasi",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("31 Desember 2023")
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Batas Donasi",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("31 Desember 2023")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 10,
                        color: Color.fromARGB(255, 117, 164, 136),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("69 Donatur"),
                          Text("2 pohon Terkumpul")
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Divider(),
                      ),
                      Text(
                        "Cerita",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey.shade200)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              """Masih banyak yang peduli, masih banyak yang berpihak pada kebaikan. 
Dukungan dari Pemerintah Daerah, Perusahaan, UMKM serta Media ternyata bisa mewujudkan acara bertajuk “Harapan Hutan” di daerah Mangunharjo, Semarang. 
Harapan itu masih ada, termasuk peserta yang datang lebih dari lima ratus orang dari beragam latar belakang : pelajar, mahasiswa, pekerja, polisi dan TNI, juga beragam komunitas. 
Maka perkenalkan project terbaru kami yaitu “RawatBumi”, sebuah momentum untuk berterima kasih kepada bumi yang telah menjadi tempat yang nyaman walau penghuninya tak berlaku """),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Donasi.route);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              minimumSize: Size.fromHeight(55),
                              backgroundColor: Colors.black),
                          child: Text("Donasi")),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
