import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';

class FaceIDScreen extends StatefulWidget {
  const FaceIDScreen({super.key});

  @override
  State<FaceIDScreen> createState() => _FaceIDScreenState();
}

class _FaceIDScreenState extends State<FaceIDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment(0, -0.5),
            scale: 0.65,
            image: AssetImage('assets/icons/coffeeshot_logo.png'),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: colorScheme.primary,
                    offset: Offset(0, 0),
                    blurRadius: 2,
                  )
                ],
                color: colorScheme.onPrimary,
              ),
              child: Container(
                padding: EdgeInsets.only(top: 25, bottom: 200),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 95, right: 95),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.face_2_outlined,
                              size: 45, color: colorScheme.primary),
                          SizedBox(height: 40),
                          Text(
                            'Want to Enable faceID?',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                              color: colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 35, right: 35, top: 15),
                      child: Text(
                        "This helps you login quicker!",
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w900,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('YES'),
                            style: ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                  horizontal: 60,
                                  vertical: 18,
                                ),
                              ),
                              foregroundColor: MaterialStatePropertyAll(
                                colorScheme.onPrimary,
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                colorScheme.primary,
                              ),
                              elevation: MaterialStatePropertyAll(2.0),
                              shape: MaterialStatePropertyAll<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('NO'),
                            style: ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                EdgeInsets.symmetric(
                                  horizontal: 60,
                                  vertical: 18,
                                ),
                              ),
                              foregroundColor: MaterialStatePropertyAll(
                                colorScheme.onPrimary,
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                colorScheme.primary,
                              ),
                              elevation: MaterialStatePropertyAll(2.0),
                              shape: MaterialStatePropertyAll<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
