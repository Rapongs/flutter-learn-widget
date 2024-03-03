import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // TextEditingController controller = TextEditingController(text: "Nilai Awal");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 70),
              child: const Text(
                'NEW RECIPE',
                style: TextStyle(fontWeight: FontWeight.w900),
              )),
          actions: [
            TextButton(
                onPressed: () {
                  print('Close clicked');
                },
                child: const Text(
                  'Close',
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 70,
              color: Colors.red[400],
              padding: const EdgeInsets.only(left: 15, right: 100),
              child: const Center(
                child: Text(
                  """Super cool you are creating a new recipe!
Let's get started!""",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nama Resep',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Masukkan nama resep",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Estimasi Waktu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Masukkan estimasi waktu masak",
                              hintStyle: TextStyle(color: Colors.grey)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deskripsi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 100,
                          child: TextField(
                            maxLines: null,
                            expands: true,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                                // filled: true,
                                hintText: "Masukkan deskripsi",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Resep, Bahan dan Langkah',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 150,
                          child: TextFormField(
                            maxLines: null,
                            expands: true,
                            decoration: InputDecoration(
                                hintText:
                                    "Masukkan resep dan langkah pembuatan",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 100),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Add menu clicked');
                        },
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.red)),
                        child: Text(
                          'Add Menu',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
