import 'package:flutter/material.dart';
import 'custom_drawer.dart'; // Import your CustomDrawer

class DrawerMenuScreen extends StatefulWidget {
  const DrawerMenuScreen({super.key});

  @override
  State<DrawerMenuScreen> createState() => _DrawerMenuScreenState();
}

class _DrawerMenuScreenState extends State<DrawerMenuScreen> {
  // Global key to access ScaffoldState
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Assign the key to Scaffold
      appBar: AppBar(
        title: const Text('Custom Drawer Menu'),
        backgroundColor: Colors.amber,
        actions: [
          Builder(
            // Wrap IconButton with Builder
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu), // Icon for opening drawer
                onPressed: () {
                  Scaffold.of(context)
                      .openEndDrawer(); // Correct context provided by Builder
                },
              );
            },
          ),
        ],
      ),
      endDrawer: const CustomDrawer(), // Add your CustomDrawer here
      body: const Center(
        child: Text('Ana sayfa içerikleriniz burada.'),
      ),
    );
  }
}
