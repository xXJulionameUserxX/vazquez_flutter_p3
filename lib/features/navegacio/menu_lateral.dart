import 'package:flutter/material.dart';
import 'package:vazquez_flutter_p3/features/llistes/llistat_curt/llistatc.dart';
import 'package:vazquez_flutter_p3/features/llistes/llistat_llarg/llistatl.dart';

class SideNavScreen extends StatefulWidget {
  const SideNavScreen({super.key});

  @override
  State<SideNavScreen> createState() => _SideNavScreenState();
}

class _SideNavScreenState extends State<SideNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu lateral'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).pop(),
           icon: const Icon(Icons.airline_seat_flat_rounded)
           ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 60,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
                child: Text("Menú"),
              ),
            ),
            
            ListTile(
              leading: Icon(Icons.list),
              title: Text("Llistat curt"),
              onTap: () {
                Navigator.pop(context); 
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LlistatCurt(),
                  ),
                );              },
            ),
            ListTile(
              leading: Icon(Icons.list_alt),
              title: Text("Llistat llarg"),
              onTap: () {
                Navigator.pop(context); 
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LlistatLlarg(),
                  ),
                );              },
            )

          ],
        ),
      ),
    );
  }
}