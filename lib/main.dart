import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Row(
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormCall()),
                  );
                },
                icon: Image.asset('assets/berlin.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormCall extends StatelessWidget {
  const FormCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('App Bar')),
          body: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 4.0, 20.0, 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Kirim Pesan',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 36.0),
                    )),
                SizedBox(
                  height: 12.0,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Nama*',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Nama'),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Perusahaan/Organasasi',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Nama Perusahaan/Organisasi'),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email Anda*',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextField(decoration: InputDecoration(labelText: 'Alamat Email Anda'),),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Telepon/Handphone',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextField(decoration: InputDecoration(labelText: 'Nomor Telepon Anda'),),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Pesan Anda',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextField(
                      decoration: InputDecoration(labelText: 'Isi Pesan Anda',border: OutlineInputBorder()),
                      keyboardType: TextInputType.multiline,
                      minLines: 6,
                      maxLines: null),
                ),
              ],
            ),
          )),
    );
  }
}
