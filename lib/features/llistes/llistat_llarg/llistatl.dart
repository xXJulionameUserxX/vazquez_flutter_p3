import 'package:flutter/material.dart';

import 'package:vazquez_flutter_p3/features/usuaris/usuaris.dart';

class LlistatLlarg extends StatelessWidget {
  const LlistatLlarg({super.key});

 @override
  Widget build(BuildContext context) {
    final List<Usuaris> users = List.generate(
      llistaUsuaris.length,
      (index) => llistaUsuaris[index],
    );

    return Scaffold(
       appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Llistat llarg'),
       ),
       body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index){
            return ListTile(
              leading: CircleAvatar(
                child: Text(index.toString()),
              ),
              title: Text(getNom(index)),
              subtitle: Text(getEmail(index)),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Hola caracola, pulsaste a ${getNom(index)}')),
                );
              },
            );
        }
        ),
    );
  }
}

