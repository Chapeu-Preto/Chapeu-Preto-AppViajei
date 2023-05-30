import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 150,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 180,
              height: 180,
              child: Image.asset('assets/logo.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 120,
              height: 45,
              child: Image.asset('assets/nome.png')
            )
          ],
        ),
      ),
    );
  }
}