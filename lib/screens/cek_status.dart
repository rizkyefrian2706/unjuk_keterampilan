// ignore_for_file: library_private_types_in_public_api, unused_field, prefer_collection_literals, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'package:flutter_application_1/screens/detail_pesanan.dart';

class CekStatus extends StatefulWidget {
  const CekStatus({
    Key? key,
  }) : super(key: key);

  @override
  _CekStatusState createState() => _CekStatusState();
}

class _CekStatusState extends State<CekStatus> {
  final _taskEmailController = TextEditingController();
  final _taskNoTrxController = TextEditingController();

  String _taskEmail = '';
  String _taskNoTrx = '';
  @override
  void initState() {
    super.initState();
    _taskEmailController.addListener(() {
      setState(() {
        _taskEmail = _taskEmailController.text;
      });
    });
    _taskNoTrxController.addListener(() {
      setState(() {
        _taskNoTrx = _taskNoTrxController.text;
      });
    });
  }

  @override
  void dispose() {
    _taskEmailController.dispose();
    _taskNoTrxController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Image.asset(
            'assets/xl.png',
            width: 35,
            height: 35,
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.0),
              children: <Widget>[
                backBtn(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text("Cek Status Transaksi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                ),
                buildEmailField(),
                buildNoTrxField(),
                const SizedBox(
                  height: 16,
                ),
                WebViewPlus(
                  javascriptMode: JavascriptMode.unrestricted,
                  onWebViewCreated: (controller) {
                    controller.loadUrl("assets/webpages/index.html");
                  },
                  javascriptChannels: Set.from([
                    JavascriptChannel(
                        name: 'Captcha',
                        onMessageReceived: (JavascriptMessage message) {})
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: refreshBtn(),
                ),
                buildButton(),
                info(), 
              ],
            ),
          ),
        ));
  }

  Widget backBtn() {
    return Row(children: [
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 18.0,
      ),
      Text(
        "Kembali ke halaman utama",
        style: TextStyle(fontWeight: FontWeight.bold),
      )
    ]);
  }

  Widget refreshBtn() {
    return Row(children: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.refresh),
        iconSize: 18.0,
      ),
      Flexible(
        child: Text(
            'Muat ulang jika captcha tidak tampil untuk bisa klik "Cek Status Pesanan"'),
      ),
    ]);
  }

  Widget info() {
    return Card(
      color: const Color.fromRGBO(240, 243, 254, 1),
      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.info_outline_rounded),
            color: Color.fromRGBO(0, 45, 187, 1),
            iconSize: 20.0,
          ),
          Flexible(
            child: Text(
                'Anda dapat melihat kode transaksi pada status halaman konfirmasi atau inbox pada email anda yang terdaftar.'),
          ),
        ]),
      ),
    );
  }

  Widget buildEmailField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _taskEmailController,
          cursorColor: Colors.black,
          decoration: const InputDecoration(
            labelText: 'Email',
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(0, 45, 187, 1),),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(0, 45, 187, 1),),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildNoTrxField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 8,
        ),
        TextField(
          controller: _taskNoTrxController,
          cursorColor: Colors.black,
          decoration: const InputDecoration( 
            labelText: "Nomor Transaksi",
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(0, 45, 187, 1),),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(0, 45, 187, 1),),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.all(20),
          backgroundColor: Color.fromRGBO(0, 45, 187, 1)),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const DetailPesanan()),
        );
      },
      child: const Text(
        'Cek Status Pesanan',
      ),
    );
  }
}
