import 'package:flutter/material.dart';

import 'package:vazquez_flutter_p3/features/usuaris/usuaris.dart';

class LlistatCurt extends StatefulWidget {
  const LlistatCurt({super.key});


  @override
  State<LlistatCurt> createState() => _LlistatCurt();
}

class NomWidget extends StatelessWidget {
  const NomWidget({super.key, required this.user});
  //Atributs classe
  final Usuaris user;

  @override
  Widget build(BuildContext context) {
    //Un exemple amb ListTile. Cal tenir en compte que dins s'ha d'utilitzar la instància objecte1
    return ListTile(
            leading: Icon(Icons.accessibility),
            title: Text('Nom: ${user.nom}',),
            subtitle: Text('Email: ${user.email}'),
    );
  }
}

class _LlistatCurt extends State<LlistatCurt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Llistat curt'),
        
      ),
      body: 
      ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          NomWidget(user: llistaUsuaris[0]),
          Divider(),
          NomWidget(user: llistaUsuaris[1]),
          Divider(),
          NomWidget(user: llistaUsuaris[2]),
          Divider(),
          NomWidget(user: llistaUsuaris[3]),
        ],
      ),
    );
    
  }
}

