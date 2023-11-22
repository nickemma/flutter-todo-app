import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to TODO App'),
            backgroundColor: Colors.red,
            elevation: 0,
            leading: const Icon(Icons.menu),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
          body: ListView(
            children: [
              Container(
                height: 350,
                color: Colors.deepPurple,
              ),
              Container(
                height: 350,
                color: Colors.deepPurple[400],
              ),
              Container(
                height: 350,
                color: Colors.deepPurple[200],
              ),
            ],
          )),
    );
  }
}
