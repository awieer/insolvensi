import 'package:flutter/material.dart';
import 'package:insolvensi/views/pages/home/home_page.dart';
import 'package:insolvensi/views/pages/register/register_page.dart';
import 'package:insolvensi/views/themes/styles.dart';
import 'package:insolvensi/views/widget/text_input.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
            Image.asset(
              "assets/imgs/logo.png",
              width: 180,
            ),
            SizedBox(height: 80),
            TextInput(label: "ID Pengguna", hinText: "Masukkan ID Pengguna"),
            TextInput(label: "KataLaluan", hinText: "Masukkan KataLaluan"),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Log Masuk",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 3),
                    Icon(
                      Icons.arrow_forward,
                      size: 17,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPage()));
                  },
                  child: Text(
                    "Daftar Baru ? ",
                    style: Styles.textHeader,
                  ),
                ),
                SizedBox(width: 10),
                Text("|"),
                SizedBox(width: 10),
                Text(
                  "Lupa KataLaluan ?",
                  style: Styles.textHeader,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
