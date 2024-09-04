import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomNavBaBottomrState();
}

class _CustomNavBaBottomrState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('Custom BottomNawBar'),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
          child: GNav(
            padding: const EdgeInsets.all(16),
            gap: 8,
            backgroundColor: Colors.black,
            color: Colors.white,
            rippleColor: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(255, 36, 36, 36),
            onTabChange: (value) {
              // ignore: avoid_print
              print(value); //Tıklanan butonun indexini alır.
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
