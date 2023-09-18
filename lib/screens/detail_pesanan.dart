import 'package:flutter/material.dart';

void main() => runApp(const DetailPesanan());

class DetailPesanan extends StatelessWidget {
  const DetailPesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(15.0),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/packing.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                    info(),
                    user(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget info() {
    return Card(
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Colors.black,
      elevation: 5,
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Text(
                "Pesanan Diproses",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            )),
            Divider(
              thickness: 1,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 12, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Paket"),
                      Expanded(
                          child: Text("SIM Reguler - Xtra Combo Flex L 61GB",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kode Transaksi"),
                      Expanded(
                          child: Text("WEBXLSTOREVABCA-668793452117",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 45, 187, 1)))),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Metode Pembayaran"),
                      Expanded(
                          child: Text("Virtual Account BCA",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nomor Rekening"),
                      Text("208176287876443640",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 45, 187, 1))),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pengiriman"),
                      Text("JNE Reguler",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Jumlah Tagihan"),
                      Text("Rp 96.200",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget user() {
    return Card(
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      shadowColor: Colors.black,
      elevation: 5,
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              child: Text("Info Pemesan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            )),
            Divider(
              thickness: 1,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 12, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nama"),
                      Text("Michael Jordan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("No Telp"),
                      Text("087874493550",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Email"),
                      Text("michaeljordan@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nomor Rekening"),
                      Text("208176287876443640",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Alamat Anda"),
                      Expanded(
                          child: Text(
                              "Denpasar, Denpasar, Dauh Puri Kangin, Barat, Bali Kartika Plasa Gang Pendawa No. 3 Kuta, Bali, Indonesia",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kode Pos"),
                      Text("1745363",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
