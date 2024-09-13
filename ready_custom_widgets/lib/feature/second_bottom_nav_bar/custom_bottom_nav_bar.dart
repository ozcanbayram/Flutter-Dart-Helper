import 'package:flutter/material.dart';

class CustomBottomNavBarSecond extends StatefulWidget {
  const CustomBottomNavBarSecond({super.key});

  @override
  State<CustomBottomNavBarSecond> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBarSecond> {
  int _selectedIndex = 0;

  void _navigateToBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const Center(
      //! Bu widget başka bir file de olabilir.
      child: Text(
        'HOME',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'MESSAGE',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'ACCOUNT',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'SETTINGS',
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Bottom Navigation Bar')),
        backgroundColor: Colors.yellowAccent,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateToBottomBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'Messages'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
