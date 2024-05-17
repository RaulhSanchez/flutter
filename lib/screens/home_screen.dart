import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text('Nombre de ruta'),
          leading: const Icon(Icons.access_time_outlined),
          onTap: () {
            // final route = MaterialPageRoute(
            //     builder: (context) => const ListView1Screen());
            // Navigator.push(context, route);
            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 10,
      ),
    );
  }
}
