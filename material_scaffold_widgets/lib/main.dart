import 'package:flutter/material.dart';

void main() {
  runApp(hstAboutPage());
}

class hstAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black, title: Text("HST Mobil")),
        body: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: const Text('About Us'),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              color: Colors.white,
                              child: Center(
                                child: Text('This is a BottomSheet'),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    const SizedBox(width: 8)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
