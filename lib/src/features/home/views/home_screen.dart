import 'package:apps_with_flutter/src/common/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// List<Object> apps = [
//   {'id': 'Plant App'},
//   {'id': 'Stock App'},
//   {'id': 'app2'},
// ];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'App UIs',
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 24,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(
                      Routes.plantApp['name']!,
                    );
                  },
                  child: const Text('Plant App'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(
                      Routes.walletApp['name']!,
                    );
                  },
                  child: const Text('Stock App'),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.pushNamed(
                      Routes.travelApp['name']!,
                    );
                  },
                  child: const Text('Travel App'),
                ),
              ],
            ),
          ),
        )
        // body: ListView.separated(
        //   itemCount: apps.length,
        //   separatorBuilder: (context, index) => const Divider(height: 0),
        //   itemBuilder: (context, index) => const Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 16),
        //     child: ListTile(
        //       contentPadding: EdgeInsets.zero,
        //       leading: CircleAvatar(),
        //       title: Text('title'),
        //       subtitle: Text('sub'),
        //       trailing: Icon(Icons.paypal),
        //     ),
        //   ),
        // ),
        );
  }
}
