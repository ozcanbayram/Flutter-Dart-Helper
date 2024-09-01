import 'package:flutter/material.dart';
//! Spinkit paketini import edelim:
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatefulWidget {
  const LoadingBar({super.key});

  @override
  State<LoadingBar> createState() => tLoadingBarState();
}

// ignore: camel_case_types
class tLoadingBarState extends State<LoadingBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.red,
        title: const Center(
          child: Text(
            'Custom Loading Bar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Center(
              child: Text(
                'Bu sayfada flutter_spinkit paketi kullanıldı.',
                style: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            _CustomSizedBox(
              boxTitle: 'Dancing Square',
              boxLoadingBar: SpinKitDancingSquare(
                size: 80,
                color: Colors.red,
              ),
            ),
            _CustomSizedBox(
              boxTitle: 'Rotating Plain',
              boxLoadingBar: SpinKitRotatingPlain(
                size: 80,
                color: Colors.amber,
              ),
            ),
            _CustomSizedBox(
              boxTitle: 'Double Bounce',
              boxLoadingBar: SpinKitDoubleBounce(
                size: 80,
                color: Colors.green,
              ),
            ),
            _CustomSizedBox(
              boxTitle: 'Wave',
              boxLoadingBar: SpinKitWave(
                size: 80,
                color: Colors.lightBlueAccent,
              ),
            ),
            _CustomSizedBox(
                boxTitle: 'Fading Four',
                boxLoadingBar:
                    SpinKitFadingFour(size: 80, color: Colors.black)),
            _CustomSizedBox(
                boxTitle: 'Fading Cube',
                boxLoadingBar: SpinKitFadingCube(
                  size: 80,
                  color: Colors.lightGreenAccent,
                )),
            _CustomSizedBox(
                boxTitle: 'Pulsing Grid',
                boxLoadingBar: SpinKitPulsingGrid(
                  size: 80,
                  color: Colors.orangeAccent,
                )),
            _CustomSizedBox(
                boxTitle: 'Square Circle',
                boxLoadingBar: SpinKitSquareCircle(
                  size: 80,
                  color: Colors.yellowAccent,
                ))
          ],
        ),
      ),
    );
  }
}

class _CustomSizedBox extends StatelessWidget {
  final String boxTitle;
  final Widget boxLoadingBar;
  const _CustomSizedBox({
    // ignore: unused_element
    super.key,
    required this.boxTitle,
    required this.boxLoadingBar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        // width: 400,
        height: 180,
        child: Card(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: boxLoadingBar,
              ),
              Text(
                boxTitle,
                style: const TextStyle(fontSize: 35),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
