import 'package:flutter/material.dart';
import 'package:insolvensi/views/themes/styles.dart';
import 'package:insolvensi/views/widget/text_input.dart';

class DepositPage extends StatefulWidget {
  @override
  _DepositPageState createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  String price = "1500";

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
                    Text("Deposit Pempetisyen",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),
                Image.asset("assets/imgs/card.png", width: 32),
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
                  child: Text("1. Bayaran Deposit",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Radio(
                            value: "1500",
                            groupValue: price,
                            onChanged: (value) {
                              setState(() {
                                price = value;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                                "RM 1,500 - Deposit Si Berhutang (Own Petition Deposit)"),
                          ),
                        ]),
                        Row(children: [
                          Radio(
                            value: "2000",
                            groupValue: price,
                            onChanged: (value) {
                              setState(() {
                                price = value;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                                "RM 2,000 - Deposit Petisyen Pemiutang (Creditors Petition Deposit)"),
                          ),
                        ]),
                        Row(children: [
                          Radio(
                            value: "3000",
                            groupValue: price,
                            onChanged: (value) {
                              setState(() {
                                price = value;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                                "RM 3,000 - Deposit Penggulungan Syarikat (Winding-Up Deposit)"),
                          ),
                        ])
                      ],
                    ))
              ]),
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
                  child: Text("2. Maklumat Petisyen",
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
                            label: "Mahkamah", hinText: " Pilih Mahkamah"),
                        TextInput(label: "No. Kes Mahkamah", hinText: ""),
                        TextInput(
                            label:
                                "No. KP Baru/ No. Pasport/ No. Polis atau Tentera Penghutang:",
                            hinText: ""),
                        TextInput(label: "Nama Penghutang", hinText: ""),
                      ],
                    ))
              ]),
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
                  child: Text("3. Maklumat Pempetisyen",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextInput(label: "Nama Pempetisyen", hinText: ""),
                        TextInput(label: "Alamat", hinText: ""),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFE8ECEF),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 11),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFE8ECEF),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "",
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 11),
                        TextInput(label: "Poskod", hinText: ""),
                        TextInput(label: "Negara", hinText: "Sila Pilih"),
                        TextInput(label: "Negeri", hinText: "Sila Pilih"),
                        TextInput(label: "Bandar", hinText: "Sila Pilih"),
                      ],
                    ))
              ]),
            ),
            SizedBox(height: 11),
            Text(
                "*Adalah dengan ini saya mengesahkan bahawa maklumat diatas adalah benar dan sah."),
            SizedBox(height: 5),
            Text(
                "*Sekiranya terdapat tuntutan semula bagi Bayaran Deposit, sila berhubungan dengan Cawangan mentadbir kes."),
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
