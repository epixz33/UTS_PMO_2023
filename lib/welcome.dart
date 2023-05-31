import 'package:flutter/material.dart';

import 'dashboard.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue[800],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: SizedBox(
                  height: 400,
                  width: double.maxFinite,
                  child: Image.asset('assets/welcome.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Datang Di",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "E-Perpustakaan",
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    },
                    child: Text("Lanjut"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
