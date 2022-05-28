// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'a_page.dart';
import 'x_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => APage())));
              },
              child: const Text("GO PAGE A"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => XPage(
                      )),
                    )).then((_) {
                  print("HomePageya dönüldü");
                });
              },
              child: const Text("GO PAGE X"),
            ),
          ],
        ),
      ),
    );
  }
}
