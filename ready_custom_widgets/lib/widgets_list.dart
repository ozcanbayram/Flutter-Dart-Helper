import 'package:flutter/material.dart';
import 'package:ready_custom_widgets/feature/drawer_menu/custom_drawer_menu.dart';
import 'package:ready_custom_widgets/feature/register_screen/custom_login.dart';

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
      body: const Column(
        children: [
          _CustomListTile(
              title: 'Drawer Menu',
              subTitle: 'Gradiyan renk geçişli menü',
              isVerifiy: true,
              goWidget: DrawerMenuScreen()),
          _CustomListTile(
              title: 'Login Screen',
              subTitle: 'Kişiselleştirmeye hazır giriş yapma ekranı',
              isVerifiy: true,
              goWidget: CustomLoginView()),
        ],
      ),
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isVerifiy;
  final Widget goWidget;

  const _CustomListTile({
    // ignore: unused_element (super.key)
    super.key,
    required this.title,
    required this.subTitle,
    required this.isVerifiy,
    required this.goWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListTile(
        title: Text(title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(subTitle,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        leading: Icon(
            isVerifiy ? Icons.verified : Icons.contact_support_outlined,
            size: 35,
            color: isVerifiy ? const Color(0xff7695FF) : Colors.red),
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
                  child: goWidget,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
