import 'package:flutter/material.dart';
import 'package:flutter_notes/level-3/lottie_animation.dart';
import 'package:flutter_notes/level-3/navigator/navigate_home_detail.dart';

// route ayarlarını mainde yapmak yerine burada yapabiliriz.

mixin NavigatorCustom on Widget {
  Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name == "/") {
      return _navigateToNotmal(const LottieLearn());
    } else if (routeSettings.name == "/homeDetails") {
      final id = routeSettings.arguments;
      return _navigateToNotmal(NavigateHomeDetailView(
        id: id is String ? id : null,
      ));
    }

    return null;
  }

  Route<dynamic>? _navigateToNotmal(Widget child) {
    return MaterialPageRoute(
      builder: (context) {
        return const LottieLearn();
      },
    );
  }
}
