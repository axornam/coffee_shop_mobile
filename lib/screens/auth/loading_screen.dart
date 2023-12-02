import 'package:coffee_shop/screens/auth/widgets/face_id_modal.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(0, -0.55),
            image: AssetImage('assets/icons/coffeeshot_logo.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 70, right: 70, bottom: 250),
              child: LinearProgressIndicator(
                value: _progress,
                minHeight: 20.0,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _animateProgressIndicator() async {
    await Future.doWhile(() async {
      await Future.delayed(const Duration(seconds: 1));
      //_progress++;
      setState(() {
        _progress += 0.1;
      });
      return _progress < 1.0;
    });
  }

  _load() async {
    // simulate loading screen
    await _animateProgressIndicator();
    // navigate to faceID success / failed page
    showAdaptiveDialog(
      context: context,
      builder: (_) => FaceIDModal(),
    );
  }
}
