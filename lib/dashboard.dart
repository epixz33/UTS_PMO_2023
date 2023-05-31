import 'package:flutter/material.dart';
import 'package:uts/savedbook.dart';
import 'package:uts/viewbook.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 150,
              child: Container(
                color: Colors.blueGrey[900],
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/me.png'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            "SYACHRIL FAHLEVI",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.amber,
                            ),
                          ),
                          Text(
                            "20200801340",
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.amber,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SavedBooks()),
                              );
                            },
                            child: Text("Buku Tersimpan"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.amber),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 150),
              color: Colors.grey[400],
            ),
            SizedBox(
              width: 400,
              child: Container(
                margin: EdgeInsets.fromLTRB(50, 160, 50, 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'cari',
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 240, 5, 0),
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                child: SizedBox(
                                  height: 25,
                                  width: 5,
                                  child: Container(
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                              Text(
                                "Baru Rilis",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
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
                                trailing: Icon(Icons.bookmark_outline),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ViewBook()),
                                  );
                                },
                                child: Text("Baca Buku Ini"),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.amber),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/card_2.jpg',
                                  fit: BoxFit.fill,
                                  width: 150,
                                  height: 150,
                                ),
                                ListTile(
                                  title: Text("Dilan 1990"),
                                  subtitle: Text("Pidi Baiq"),
                                  trailing: Icon(Icons.bookmark_outline),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ViewBook()),
                                    );
                                  },
                                  child: Text("Baca Buku Ini"),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Card(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/Card_3.jpg',
                                  fit: BoxFit.fill,
                                  width: 150,
                                  height: 150,
                                ),
                                ListTile(
                                  title: Text("Misteri Cinta Guru Honorer"),
                                  subtitle: Text("Iz Mahmudah"),
                                  trailing: Icon(Icons.bookmark_outline),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ViewBook()),
                                    );
                                  },
                                  child: Text("Baca Buku Ini"),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.amber),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
