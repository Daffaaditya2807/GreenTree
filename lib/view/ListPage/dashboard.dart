import 'package:e_forest/view/donasi.dart';
import 'package:e_forest/view/dukungan.dart';
import 'package:e_forest/view/kolaborasi.dart';
import 'package:e_forest/view/komunitas.dart';
import 'package:e_forest/view/rincian_acara.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  static String route = "/dashboard";
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 117, 164, 136),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png"),
            ),
            title: Text(
              "Selamat Malam",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            subtitle: Text(
              "D Morgan",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            trailing: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ListView(
                  children: [
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 230, 230, 230),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Center(
                        child: Text("B A N N E R "),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Dukungan.route);
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/dukungan.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Dukungan")
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Kolaborasi.route);
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/kolaborasi.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Kolaborasi")
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Komunitas.route);
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/komunitas.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Komunitas")
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, Donasi.route);
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/donasi.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Donasi")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Acara Populer",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 10,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true, // You won't see infinite size error
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RincianAcara.route.toString());
                          },
                          child: Container(
                            height: 10,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        "assets/pohon_nganjuk.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Nganjuk , Derma Pohon : Hutan Kota",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 3),
                                    child: Text("Green tree"),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.timelapse),
                                          Text("1 Hari")
                                        ],
                                      ),
                                      Text("10 pohon",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 117, 164, 136)))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      "assets/trumbu_karang.png",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Bali , Derma Pohon : Hutan Kota",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 3),
                                  child: Text("Green tree"),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.timelapse),
                                        Text("1 Hari")
                                      ],
                                    ),
                                    Text(
                                      "7 pohon",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 117, 164, 136)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // height: 200,
            ),
          )
        ],
      ),
    );
  }
}
