import 'package:flutter/material.dart';
import 'package:insolvensi/views/pages/bayaran/bayaran_ansuran_page.dart';
import 'package:insolvensi/views/pages/deposit/deposit_page.dart';
import 'package:insolvensi/views/pages/individu/carian_individu_page.dart';
import 'package:insolvensi/views/pages/syarikat/carian_syarikat_page.dart';
import 'package:insolvensi/views/themes/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 50),
          Image.asset("assets/imgs/logo.png", width: 180),
          SizedBox(height: 40),
          Text("Selamat Datang Syazwi Zaili",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(0, 5),
                  ),
                ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                ))),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Kemaskini Profile"),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                ))),
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Lihat Rekod Pembayaran"),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Soalan Lazim"),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ),
            ]),
          ),
          SizedBox(height: 30),
          Text("Senarai Servis yang ditawarkan MDI",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 10),
          Row(children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CarianIndividuPage()));
                },
                child: _menuBox("assets/imgs/search.png", "Carian Status",
                    "Kebankrapan Individu"),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CarianSyarikat()));
                },
                child: _menuBox("assets/imgs/resume.png", "Carian Status",
                    "Penggulungan Syarikat"),
              ),
            ),
          ]),
          SizedBox(height: 16),
          Row(children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BayaranAnsuran()));
                },
                child: _menuBox(
                    "assets/imgs/money.png", "Bayaran", "Ansuran Bulanan"),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DepositPage()));
                },
                child: _menuBox(
                    "assets/imgs/card.png", "Bayaran", "Deposit Pempetisyen"),
              ),
            ),
          ]),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("[ "),
              Text("Log Keluar",
                  style: TextStyle(
                    color: Colors.blue,
                  )),
              Text(" ]"),
            ],
          ),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
            "Jabatan Insolvensi Malaysia tidak akan bertanggungjawab ke atas sebarang kehilangan atau kerosakan yang diakibatkan oleh penggunaan maklumat yang dicapai daripada aplikasi ini.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11,
            )),
      ),
    );
  }

  Widget _menuBox(icon, title, subtitle) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(16),
      height: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(icon, width: 40),
          SizedBox(height: 16),
          Text(title,
              style: TextStyle(
                color: Styles.primaryColor,
                fontWeight: FontWeight.bold,
              )),
          Text(subtitle),
        ],
      ),
    );
  }
}
