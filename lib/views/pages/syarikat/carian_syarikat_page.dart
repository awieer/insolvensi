import 'package:flutter/material.dart';
import 'package:insolvensi/views/themes/styles.dart';
import 'package:insolvensi/views/widget/text_input.dart';

class CarianSyarikat extends StatefulWidget {
  @override
  _CarianSyarikatState createState() => _CarianSyarikatState();
}

class _CarianSyarikatState extends State<CarianSyarikat> {
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
                    Text("Semakan Status",
                        style: TextStyle(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        )),
                    Text("Penggulungan Syarikat",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),
                Image.asset("assets/imgs/resume.png", width: 32),
              ],
            ),
            SizedBox(height: 16),
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          'Setiap carian status penggulungan syarikat akan di kenakan bayaran sebanyak'),
                  TextSpan(
                      text: ' RM10 setiap carian.',
                      style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
                "Sijil Keputusan Carian Pengulungan Syarikat boleh di cetak terus melalui sistem selepas bayaran di buat."),
            SizedBox(height: 16),
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(text: 'Sila ambil maklum, maklumat carian'),
                  TextSpan(
                      text: ' MESTI ',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'sebaik sahaja pembayaran selesai dilakukan. Fungsi cetak ini hanya akan dipaparkan dalam tempoh tiga (3) hari dari tarikh bayaran selesai.')
                ],
              ),
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
                  child: Text("Kemasukan Carian Penggulungan Syarikat",
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
                            label: "Nama Syarikat", hinText: "Nama Syarikat"),
                        TextInput(
                            label: "No. Pendaftaran Syarikat (Baru)",
                            hinText: "No. Pendaftaran Syarikat (Baru)"),
                        TextInput(
                            label: "No. pendaftaran Syarikat (Lama)",
                            hinText: "No. pendaftaran Syarikat (Lama)"),
                        SizedBox(height: 11),
                        Text(
                            "* Maksima jumlah carian adalah sebanyak 10 carian.",
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
                child: Text("Teruskan",
                    style: TextStyle(
                      color: Colors.white,
                    ))),
          ]),
        ),
      ),
    );
  }
}
