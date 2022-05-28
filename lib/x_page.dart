import 'package:flutter/material.dart';
import 'package:third_hw/y_page.dart';

class XPage extends StatefulWidget {
  const XPage({Key? key}) : super(key: key);

  @override
  _XPageState createState() => _XPageState();
}

class _XPageState extends State<XPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE X"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_sharp),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) => const YPage())));
              },
              child: const Text("GO PAGE Y"),
            ),
          ],
        ),
      ),
    );
  }
}
