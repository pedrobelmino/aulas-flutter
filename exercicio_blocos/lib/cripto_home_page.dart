import 'package:flutter/material.dart';

class CryptoHomePage extends StatelessWidget {
  const CryptoHomePage({Key? key, required this.title}) : super();

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF413E65),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.purple[100],
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.purple[200],
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.purple[300],
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.red[100],
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.red[200],
                          )),
                    ],
                  ),
                )),
            Expanded(
                flex: 3,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green[100],
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green[200],
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green[300],
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.green[400],
                          )),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
