import 'package:flutter/material.dart';
import 'package:weather_app/pages/second_route.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('First Route'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()));
            },
            child: const Text('Click Me to move to next page'),
          ),
        ));
  }
}
