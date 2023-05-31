import 'package:flutter/material.dart';
import 'package:uts/viewbook.dart';

class SavedBooks extends StatelessWidget {
  const SavedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buku Yang Kamu Simpan"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                Image.asset(
                  'assets/card_1.jpeg',
                  fit: BoxFit.fill,
                  width: 150,
                  height: 150,
                ),
                ListTile(
                  title: Text("Dunia Sedang Tidak Baik"),
                  subtitle: Text("Haura"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ViewBook()),
                    );
                  },
                  child: Text("Baca Buku Ini"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
