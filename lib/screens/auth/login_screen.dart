import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/auth/face_id_screen.dart';
import 'package:coffee_shop/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _userNameTextController.dispose();
    _passwordTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        toolbarOpacity: 0,
        leading: null,
        bottomOpacity: 1.0,
        bottom: PreferredSize(
          preferredSize: Size.square(90),
          child: Image(
            alignment: Alignment.bottomCenter,
            image: AssetImage('assets/icons/coffeeshot_logo.png'),
            fit: BoxFit.contain,
            height: 90,
          ),
        ),
        centerTitle: true,
        actions: [
          Align(
            alignment: Alignment.topRight,
            heightFactor: 2.5,
            child: TextButton(
              onPressed: () => (),
              child: Text(
                'Skip',
                style: TextStyle(
                  color: colorScheme.onBackground,
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: colorScheme.background,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
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
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: Container(
                //padding: EdgeInsets.only(left: 35, right: 35, top: 20),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 35, right: 5, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                              color: colorScheme.primary,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => FaceIDScreen(),
                                ),
                              );
                            },
                            iconSize: 30,
                            icon: ImageIcon(
                              AssetImage('assets/icons/face_id.png'),
                              color: colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 35, right: 35, top: 15),
                      child: Text(
                        "It's coffee time! Login and lets get all the coffee in the world! Or at least iced coffee.",
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w900,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Username',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: colorScheme.tertiary,
                                ),
                              ),
                            ],
                          ),
                          Card(
                            color: colorScheme.onPrimary,
                            child: TextFormField(
                              controller: _userNameTextController,
                              onTapOutside: (_) {},
                              decoration: InputDecoration(
                                labelText: 'Enter username',
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: colorScheme.tertiary,
                                ),
                              ),
                            ],
                          ),
                          Card(
                            color: colorScheme.onPrimary,
                            child: TextFormField(
                              controller: _userNameTextController,
                              onTapOutside: (_) {},
                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.remove_red_eye),
                                labelText: 'Type your password',
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text('LOGIN'),
                              style: ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                    horizontal: 70,
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
                          ),
                          SizedBox(height: 25),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: colorScheme.tertiary,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Reset Here',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                      color: colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "Don't have an account?",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: colorScheme.secondary,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 22),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => RegisterScreen(),
                                  ),
                                );
                              },
                              child: Text('CREATE NEW ACCOUNT'),
                              style: ButtonStyle(
                                padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                    horizontal: 70,
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
                          ),
                          SizedBox(height: 20),
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
