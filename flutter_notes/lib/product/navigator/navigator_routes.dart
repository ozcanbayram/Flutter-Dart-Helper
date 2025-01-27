import 'package:flutter_notes/level-3/lottie_animation.dart';
import 'package:flutter_notes/level-3/navigator/navigate_home_detail.dart';
import 'package:flutter_notes/level-3/navigator/navigate_home_view.dart';

class NavigatorRoutes {
  static const _paraf = "/";
  final items = {
    _paraf : (context) => const LottieLearn(),
    NavigateRoutesEnum.home.withParaf: (context) => const NavigateHomeView(),
    NavigateRoutesEnum.detail.withParaf: (context) =>
        const NavigateHomeDetailView()
  };
}

enum NavigateRoutesEnum {
  init,
  home,
  detail,
}

extension NavigateRouteExtension on NavigateRoutesEnum {
  String get withParaf => "/$name";
}
