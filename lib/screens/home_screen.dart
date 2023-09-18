import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cek_status.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(15.0),
          children: <Widget>[
            Stack(children: [
              Image.asset(
                'assets/landing1.png',
                height: 400,
                width: 400,
                fit: BoxFit.fitWidth,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: Center(
                    child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: SizedBox(
                            width: 150,
                            height: 260,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/sp.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                        const Expanded(
                                            child: Text(
                                          'Pesan Kartu Perdana',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 20, 0, 15),
                                      child: Expanded(
                                          child: Text(
                                              'Pesan sekarang dan tunggu kartu perdana sampai dirumah Anda')),
                                    ),
                                    const Divider(
                                      thickness: 1,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          padding: const EdgeInsets.all(20),
                                          backgroundColor: const Color.fromRGBO(
                                              0, 45, 187, 1)),
                                      onPressed: () {},
                                      child: const Text(
                                        'Pesan Disini',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          child: SizedBox(
                            width: 150,
                            height: 260,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/pesanan.png',
                                          width: 50,
                                          height: 50,
                                        ),
                                        const Expanded(
                                            child: Text(
                                          'Cek Status Pesanan',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        )),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 32, 0, 26),
                                      child: Expanded(
                                          child: Text(
                                              'Sudah melakukan pesanan? Cek status pesananmu')),
                                    ),
                                    const Divider(
                                      thickness: 1,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          padding: const EdgeInsets.all(20),
                                          backgroundColor: const Color.fromRGBO(
                                              0, 45, 187, 1)),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const CekStatus()),
                                        );
                                      },
                                      child: const Text(
                                        'Cek Disini',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Card(
                      child: SizedBox(
                        width: 310,
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cara order starter pack",
                                  textAlign: TextAlign.left,
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            )),
                      ),
                    ),
                  ],
                )),
              ),
            ]),
          ]),
      bottomNavigationBar: const Card(
        color: Color.fromRGBO(0, 210, 160, 1),
        child: SizedBox(
          width: 1500,
          height: 60,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Copyright @ 2023 XL Axiata",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Privacy Policy | Terms & Conditions",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
