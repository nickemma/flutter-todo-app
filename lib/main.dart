import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Hello World and welcome to my weather app',
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Text('Press'),
        ));
  }
}
