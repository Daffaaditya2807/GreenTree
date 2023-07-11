import 'package:flutter/material.dart';

class Dukungan extends StatefulWidget {
  static String route = "/dukunganacara";
  @override
  State<Dukungan> createState() => _DukunganState();
}

class _DukunganState extends State<Dukungan> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 117, 164, 136),
      appBar: AppBar(
        title: Text("Dukungan"),
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
              height: 20,
            ),
            Image.asset("assets/dukung.png"),
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
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/pic1.png"),
                                ),
                                title: Text("Clifford"),
                                subtitle: Text("@clifford12"),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "1134 pohon",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.green,
                                    )
                                  ],
                                ),
                              ),
                              Divider()
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/pic2.png"),
                                ),
                                title: Text("Tara"),
                                subtitle: Text("@ArtTara"),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "845 pohon",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ),
                              Divider()
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/pic3.png"),
                                ),
                                title: Text("Queen"),
                                subtitle: Text("@QueenCy"),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "734 pohon",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_up,
                                      color: Colors.green,
                                    )
                                  ],
                                ),
                              ),
                              Divider()
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/pic4.png"),
                                ),
                                title: Text("Oliver"),
                                subtitle: Text("@sykesOliver"),
                                trailing: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "544 pohon",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                              ),
                              Divider()
                            ],
                          ),
                        ),
                      )
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
