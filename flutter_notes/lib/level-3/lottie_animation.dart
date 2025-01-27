import 'package:flutter/material.dart';
import 'package:flutter_notes/product/constants/lottie_items.dart';
import 'package:flutter_notes/product/global/theme_notifier.dart';
import 'package:flutter_notes/product/navigator/navigator_routes.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    navigateToHome();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.of(context)
        .pushReplacementNamed(NavigateRoutesEnum.home.withParaf);
    //pushNamed belirli route'a gider
    //popAndPushNamed belirli route'a gider ve arkadaki route'u kapatır
    //pushReplacementNamed sayfayi degistirir - yerine getirir. back button olmaz
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            child: Lottie.asset(
              LottieItems.themeChange.lottiePath,
              repeat: false,
              controller: controller,
            ),
            onTap: () {
              context.read<ThemeNotifier>().changeTheme();
              controller.animateTo(isLight ? 0 : 1);
              isLight = !isLight;
            },
          ),
        ],
      ),
      body: Center(
        child: Lottie.network(
            'https://lottie.host/c4bb20e8-5175-4d59-bd3e-9fc2c3ba6941/RoAOEbKWZh.json'),
      ),
    );
  }
}
