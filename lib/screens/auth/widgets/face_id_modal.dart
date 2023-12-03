import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class FaceIDModal extends StatefulWidget {
  const FaceIDModal({super.key});

  @override
  State<FaceIDModal> createState() => _FaceIDModalState();
}

class _FaceIDModalState extends State<FaceIDModal> {
  String _mode = "capture";
  String _imagePath = 'assets/icons/face_id.png';

  @override
  void initState() {
    super.initState();
    // load physical face id if available
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Color(LIGHT_GREY).withOpacity(0.2),
        ),
        child: GestureDetector(
          onTap: () => _captureFaceId(),
          child: Center(
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      //Theme.of(context).colorScheme.background,
                      //Theme.of(context).colorScheme.background.withOpacity(0.1),
                      Color(CREAMY_LATTE).withOpacity(0.5),
                      Color(LIGHT_GREY).withOpacity(0.5),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    ImageIcon(
                      AssetImage(_imagePath),
                      size: 80,
                      color: Colors.white,
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Face ID',
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _captureFaceId() {
    if (_mode == "capture") {
      // navigate away
      setState(() {
        _imagePath = 'assets/icons/face_id_done.png';
        _mode = "done";
      });
    } else if (_mode == "done") {
      // navigate away
      Navigator.of(context).pop(); // remove loading screen
      Navigator.of(context).pop(); // remove auth screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomePage(isLoggedIn: true),
        ),
      );
    }
  }
}
