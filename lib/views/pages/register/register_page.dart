import 'package:flutter/material.dart';
import 'package:insolvensi/views/pages/login/login_page.dart';
import 'package:insolvensi/views/themes/styles.dart';
import 'package:insolvensi/views/widget/text_input.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<String> _country = ['Malaysia', 'Indonesia', 'Singapore'];

  String country = "Malaysia";

  int page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Styles.primaryColor,
            title: Text("Daftar Pengguna")),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: page == 1 ? _page1() : _page2(),
          )),
        ));
  }

  Widget _page1() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInput(
            label: "Nama Penuh",
            hinText: "Masukkan Nama Penuh",
          ),
          TextInput(
            label: "E-mel",
            hinText: "Masukkan E-mel",
          ),
          TextInput(label: "No. Telefon", hinText: "Masukkan No. Telefon"),
          TextInput(label: "Alamat", hinText: "Masukkan Alamat "),
          TextInput(label: "PosKod", hinText: "Masukkan Poskod"),
          Text("Negara", style: Styles.textInputLabel),
          SizedBox(height: 11),
          _countrylist(),
          SizedBox(height: 10),
          Center(
            child: Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    page = 2;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Seterusnya",
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _page2() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextInput(label: "ID Pengguna", hinText: "Masukkan ID Pengguna"),
          TextInput(label: "Katalaluan", hinText: "Masukkan Katalaluan"),
          TextInput(
              label: "Pengesahan Katalaluan", hinText: "Sahkan Katalaluan"),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Daftar",
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
          ),
        ],
      ),
    );
  }

  Widget _countrylist() {
    return InkWell(
      onTap: () {
        _countryPopup(context);
      },
      child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFE8ECEF),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                country,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Icon(Icons.arrow_drop_down),
            ],
          )),
    );
  }

  void _countryPopup(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return ListView.builder(
            itemCount: _country.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  setState(() {
                    country = _country[index];
                  });
                  Navigator.pop(context);
                },
                title: Text(_country[index]),
              );
            },
          );
        });
  }
}
