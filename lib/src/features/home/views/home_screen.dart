import 'package:apps_with_flutter/src/common/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:apps_with_flutter/src/features/plants_app/views/plants_app_screen.dart';
import 'package:go_router/go_router.dart';

List<Object> apps = [
  {'id': 'plantApp', 'widget': PlantAppScreen},
  {'id': 'app2', 'widget': PlantAppScreen},
];

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
                    child: const Text('Plant App')),
                ElevatedButton(
                    onPressed: () {
                      context.pushNamed(
                        Routes.stockApp['name']!,
                      );
                    },
                    child: const Text('Stock App')),
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
