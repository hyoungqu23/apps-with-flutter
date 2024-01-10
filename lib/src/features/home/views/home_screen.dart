import 'package:apps_with_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

List<Map<String, String>> apps = [
  {'id': 'Wallet App', 'description': 'Only UI App'},
  {'id': 'Plant App', 'description': 'Only UI App'},
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade50,
        title: Text(
          // 'Exercise Flutter UIs',
          S.current.helloWorld,
          style: const TextStyle(
            color: Colors.indigo,
            fontSize: 28,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      // body: Center(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         ElevatedButton(
      //           onPressed: () {
      //             context.pushNamed(
      //               Routes.plantApp['name']!,
      //             );
      //           },
      //           child: const Text('Plant App'),
      //         ),
      //         ElevatedButton(
      //           onPressed: () {
      //             context.pushNamed(
      //               Routes.walletApp['name']!,
      //             );
      //           },
      //           child: const Text('Stock App'),
      //         ),
      //         ElevatedButton(
      //           onPressed: () {
      //             context.pushNamed(
      //               Routes.travelApp['name']!,
      //             );
      //           },
      //           child: const Text('Travel App'),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: ListView.separated(
        itemCount: apps.length,
        separatorBuilder: (context, index) => const Divider(height: 0),
        itemBuilder: (context, index) {
          final String appName = apps[index]['id']!;
          final String appDescription = apps[index]['description']!;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListTile(
              onTap: () {
                context.pushNamed(appName);
              },
              contentPadding: EdgeInsets.zero,
              leading: const Icon(
                Icons.app_shortcut_outlined,
                size: 36,
              ),
              title: Text(
                appName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(appDescription),
              trailing: const Icon(
                Icons.arrow_circle_right_outlined,
                size: 24,
              ),
            ),
          );
        },
      ),
    );
  }
}
