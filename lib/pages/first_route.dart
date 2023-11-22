import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            const DrawerHeader(
                child: Icon(
              Icons.favorite,
              size: 48,
            )),

            // home page link
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('H O M E'),
              onTap: () {
                // clear it back before pushing
                Navigator.pop(context);

                // push it now
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            // settings page link
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('S E T T I N G S'),
              onTap: () {
                // push it now
                Navigator.pushNamed(context, '/settings');
              },
            )
          ],
        ),
      ),
    );
  }
}
