import 'package:flutter/material.dart';
import 'package:insolvensi/views/themes/styles.dart';
import 'package:insolvensi/views/widget/text_input.dart';

class BayaranAnsuran extends StatefulWidget {
  @override
  _BayaranAnsuranState createState() => _BayaranAnsuranState();
}

class _BayaranAnsuranState extends State<BayaranAnsuran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Bayaran",
                        style: TextStyle(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    Text("Ansuran Bulanan",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),
                Image.asset("assets/imgs/money.png", width: 32),
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black54)),
              child: Column(children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  color: Colors.black54,
                  child: Text("Kemasukan No. Insolvensi",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInput(
                            label: "No. Insolvensi", hinText: "No. Insolvensi"),
                        SizedBox(height: 11),
                        Text(
                            "1. Sila pastikan No. Insolvensi anda dimasukkan dengan betul.",
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                        SizedBox(height: 5),
                        Text(
                            "2. Sila hubungi Cawangan Tadbir Kes anda untuk mendapatkan No. Insolvensi.",
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                        SizedBox(height: 5),
                        Text("3. Contoh : BP000001/2010.",
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                        SizedBox(height: 11),
                      ],
                    ))
              ]),
            ),
            SizedBox(height: 16),
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text("Semak",
                    style: TextStyle(
                      color: Colors.white,
                    ))),
          ]),
        ),
      ),
    );
  }
}
