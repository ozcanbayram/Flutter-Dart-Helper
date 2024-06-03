import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView>
    with SingleTickerProviderStateMixin {
  final String _skipTitle = 'Skip';
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [TextButton(onPressed: () {}, child: Text(_skipTitle))],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chevron_left_outlined,
              color: Colors.grey,
            )),
      ),
      body: Column(
        children: [
          const Text('Order Your Food'),
          const Text(
              'Now you can order food any  time right from your mobile.'),
          Image.asset('asset/images/ich_chef.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabPageSelector(
                controller: _tabController,
              ),
              FloatingActionButton(onPressed: () {}, child: Text('Next')),
            ],
          ),
        ],
      ),
    );
  }
}
