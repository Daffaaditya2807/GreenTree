import 'package:e_forest/view/halaman_utama.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String route = "/loginPage";
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selamat Datang",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            Text("Masuk dan rasakan kemudahan berdonasi bersama Green Tree"),
            Image.asset("assets/gambar_login.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Theme(
                  data: Theme.of(context).copyWith(
                    primaryColor: Colors.redAccent,
                  ),
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        hintText: "Masukkan Email",
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
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.visibility_outlined),
                      hintText: "Masukkan Password",
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
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Lupa Password?",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HalamanUtama.route.toString());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 117, 164, 136),
                    minimumSize: Size.fromHeight(55),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text("Masuk")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum punya akun?"),
                  Text(
                    " Daftar Sekarang",
                    style: TextStyle(color: Color.fromARGB(255, 117, 164, 136)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
