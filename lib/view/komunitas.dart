import 'package:flutter/material.dart';

class Komunitas extends StatefulWidget {
  static String route = "/komunitasss";
  @override
  State<Komunitas> createState() => _KomunitasState();
}

class _KomunitasState extends State<Komunitas> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Komunitas",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 25,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Text(
              "Gabung Komunitas Green Tree untuk jadi salah satu penanam bibit seperti mereka",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic1.png"),
                    ),
                    title: Text("Clifford"),
                    horizontalTitleGap: 20,
                    subtitle: Text("@Clifford12"),
                  ),
                  Divider()
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic2.png"),
                    ),
                    title: Text("Tara"),
                    horizontalTitleGap: 20,
                    subtitle: Text("@ArtTara"),
                  ),
                  Divider()
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic5.png"),
                    ),
                    title: Text("Pascal"),
                    horizontalTitleGap: 20,
                    subtitle: Text("@pascall"),
                  ),
                  Divider()
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic3.png"),
                    ),
                    title: Text("Queen"),
                    horizontalTitleGap: 20,
                    subtitle: Text("@QueenCy"),
                  ),
                  Divider()
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/pic4.png"),
                    ),
                    title: Text("Oliver"),
                    horizontalTitleGap: 20,
                    subtitle: Text("@sykesOliver"),
                  ),
                  Divider()
                ],
              ),
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
