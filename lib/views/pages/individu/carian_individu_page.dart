import 'package:flutter/material.dart';
import 'package:insolvensi/views/themes/styles.dart';
import 'package:insolvensi/views/widget/text_input.dart';

class CarianIndividuPage extends StatefulWidget {
  @override
  _CarianIndividuPageState createState() => _CarianIndividuPageState();
}

class _CarianIndividuPageState extends State<CarianIndividuPage> {
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
                    Text("Kebankrapan Individu",
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),
                Image.asset("assets/imgs/search.png", width: 32),
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
                          'Setiap carian status kebankrapan akan dikenakan bayaran sebanyak'),
                  TextSpan(
                      text: ' RM10 setiap individu.',
                      style: TextStyle(color: Colors.red)),
                  TextSpan(
                      text:
                          'Sijil Keputusan Carian Kebankrapan boleh di cetak terus melalui sistem selepas bayaran berjaya dibuat.')
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
                "Sila isi Nombor Pengenalan seperti mana tercatat didalam Kad Pengenalan/Pasport."),
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
                  child: Text("Kemasukan Carian Individu",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
                Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        TextInput(label: "Nama", hinText: "Nama"),
                        TextInput(label: "No. KP Baru", hinText: "No. KP Baru"),
                        TextInput(label: "No. KP Lama", hinText: "No. KP Lama"),
                        TextInput(
                            label: "No. Polis/No. Tentera",
                            hinText: "No. Polis/No. Tentera"),
                        TextInput(label: "No. Pasport", hinText: "No. Pasport"),
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
