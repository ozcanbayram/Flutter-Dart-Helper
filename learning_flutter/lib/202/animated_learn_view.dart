import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = true;
  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _changeVisible();
            controller.animateTo(_isVisible ? 1 : 0);
          });
        },
      ),
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      body: Column(
        children: [
          ListTile(
              title: AnimatedOpacity(
                  opacity: _isOpacity ? 1 : 0,
                  duration: _DurationItems.durationLow,
                  child: const Text('data')),
              trailing: IconButton(
                icon: const Icon(Icons.add_reaction),
                onPressed: () {
                  _changeOpacity();
                },
              )),
          AnimatedDefaultTextStyle(
              style: _isVisible
                  ? const TextStyle(color: Colors.black, fontSize: 20)
                  : const TextStyle(color: Colors.black, fontSize: 70),
              duration: _DurationItems.durationLow,
              child: const Text('data')),
          AnimatedIcon(icon: AnimatedIcons.menu_home, progress: controller),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            width: MediaQuery.of(context).size.width * 0.4,
            height: _isVisible ? 0 : MediaQuery.of(context).size.height * 0.1,
            color: Colors.blue,
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: const Placeholder(),
      secondChild: const SizedBox.shrink(),
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: _DurationItems.durationFast,
    );
  }
}
// Text('data', style: Theme.of(context).textTheme.titleMedium,)

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
  static const durationFast = Duration(milliseconds: 100);
}
