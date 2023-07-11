import 'package:e_forest/view/ListAcara/Populer.dart';
import 'package:e_forest/view/Model/button_selected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/custom_tab_bar.dart';
import 'package:flutter_custom_tab_bar/indicator/custom_indicator.dart';
import 'package:flutter_custom_tab_bar/indicator/linear_indicator.dart';
import 'package:flutter_custom_tab_bar/transform/color_transform.dart';

class Acara extends StatefulWidget {
  static String route = "/acaraa";
  @override
  State<Acara> createState() => _AcaraState();
}

class _AcaraState extends State<Acara> {
  List<DataModelButton> listButton = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listButton.add(DataModelButton("Populer", true));
    listButton.add(DataModelButton("Mendesak", false));
    listButton.add(DataModelButton("Komunitas", false));
  }

  static int indexxx = 0;
  PageController pageController = PageController(initialPage: indexxx);

  List<Widget> pages = [
    Populer(),
    Container(
      child: Center(child: Text('Halaman Mendesak Kosong')),
    ),
    Container(
      child: Center(child: Text('Halaman Komunitas Kosong')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Cari...",
                  fillColor: Color.fromARGB(255, 241, 241, 241),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 224, 224))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 224, 224)))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: Align(
                alignment: Alignment.center,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (c, index) {
                      return GestureDetector(
                        onTap: () {
                          // setState(() {
                          //   if (!listButton[index].isSelected) {
                          //     listButton[index].isSelected = false;
                          //   }
                          // });
                          setState(() {
                            listButton[index].isSelected =
                                !listButton[index].isSelected;

                            if (index == 0) {
                              print("Ini Populer");
                              pageController.animateToPage(
                                0,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                              setState(() {
                                indexxx = 0;
                                print(indexxx);
                              });
                            } else if (index == 1) {
                              print("Ini Mendesak");
                              pageController.animateToPage(
                                1,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                              setState(() {
                                indexxx = 1;
                                print(indexxx);
                              });
                            } else if (index == 2) {
                              print("ini Komunitas");
                              pageController.animateToPage(
                                2,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                              setState(() {
                                indexxx = 2;
                                print(indexxx);
                              });
                            }

                            for (var i = 0; i < listButton.length; i++) {
                              if (i != index) {
                                listButton[i].isSelected = false;
                                // print(i);
                              }
                            }
                          });
                        },
                        child: Container(
                          width: 110,
                          decoration: BoxDecoration(
                              color: listButton[index].isSelected
                                  ? Color.fromARGB(255, 117, 164, 136)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Color.fromARGB(255, 117, 164, 136),
                                  width: 2)),
                          child: Center(
                            child: Text(
                              listButton[index].button,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: listButton[index].isSelected
                                      ? Colors.white
                                      : Color.fromARGB(255, 117, 164, 136)),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (c, i) {
                      return const SizedBox(width: 10);
                    },
                    itemCount: listButton.length),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                children: pages,
              ),
            )
          ],
        ),
      ),
    );
  }
}
