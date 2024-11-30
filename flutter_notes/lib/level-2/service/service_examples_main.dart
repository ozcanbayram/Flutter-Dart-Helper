import 'package:flutter/material.dart';
import 'package:flutter_notes/level-2/service/service_learn_view.dart';
import 'package:flutter_notes/level-2/service/service_post_learn.dart';

class ServiceExamplesMain extends StatefulWidget {
  const ServiceExamplesMain({super.key});

  @override
  State<ServiceExamplesMain> createState() => _ServiceExamplesMainState();
}

class _ServiceExamplesMainState extends State<ServiceExamplesMain>
    with NavigatorManager {
  final String fetchButton = 'Fetch Page';
  final String postButton = 'Push Button';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servis Örnek Sayfaları'),
      ),
      body: Center(
        child: Column(
          children: [
            NavigatorButton(
                buttonTitle: fetchButton,
                onPressed: () => navigateToPush(context, const ServiceLearn())),
            NavigatorButton(
                buttonTitle: postButton,
                onPressed: () =>
                    navigateToPush(context, const ServicePostLearn())),
          ],
        ),
      ),
    );
  }
}

class NavigatorButton extends StatelessWidget {
  const NavigatorButton({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
  });

  final String buttonTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(buttonTitle));
  }
}

mixin NavigatorManager {
  void navigateToPush(BuildContext context, Widget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }
}
