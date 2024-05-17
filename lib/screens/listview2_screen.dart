import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
            title: Text(options[i]),
            onTap: () {
              final game = options[i];
              print(game);
            },
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.indigo,
            )),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
