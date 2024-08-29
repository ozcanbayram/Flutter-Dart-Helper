import 'package:flutter/material.dart';
import 'package:ready_custom_widgets/feature/drawer_menu/custom_drawer_menu.dart';

class WidgetsList extends StatefulWidget {
  const WidgetsList({super.key});

  @override
  State<WidgetsList> createState() => _WidgetsListState();
}

class _WidgetsListState extends State<WidgetsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFD7C4),
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Center(child: Text('All Custom Widgets')),
        backgroundColor: const Color(0xff7695FF),
      ),
      body: ListTile(
        title: const Text(
          'Drawer Menu',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        subtitle: const Text(
          'Gradiyan renk geçişli menü.',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.verified,
          size: 35,
          color: Color(0xff7695FF),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_outlined),
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
                const begin = Offset(1.0, 0.0); // Sağdan sola kayma
                const end = Offset.zero; // Son konum
                const curve = Curves.easeInOut; // Animasyonun eğrisi

                var tween = Tween(begin: begin, end: end);
                var offsetAnimation =
                    animation.drive(tween.chain(CurveTween(curve: curve)));

                return SlideTransition(
                  position: offsetAnimation,
                  child: const DrawerMenuScreen(),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
