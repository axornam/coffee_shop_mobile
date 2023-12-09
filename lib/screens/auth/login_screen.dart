import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/auth/face_id_screen.dart';
import 'package:coffee_shop/screens/auth/register_screen.dart';
import 'package:coffee_shop/screens/home_page.dart';
import 'package:coffee_shop/widgets/button.dart';
import 'package:coffee_shop/widgets/input_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameTextController =
      TextEditingController(text: "axornam");
  final TextEditingController _passwordTextController =
      TextEditingController(text: "password123");

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => HomePage(isLoggedIn: false),
                  ),
                );
              },
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
        child: Form(
          key: _formKey,
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
                            InputField(
                              title: "Username",
                              placeholder: "Enter username",
                              controller: _userNameTextController,
                            ),
                            SizedBox(height: 20),
                            PasswordInputField(
                              title: "Password",
                              placeholder: 'Type your password',
                              controller: _passwordTextController,
                            ),
                            SizedBox(height: 30),
                            CustomButton(
                              title: 'LOGIN',
                              onPressed: () => _handleLogin(),
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
                            CustomButton(
                              title: 'REGISTER',
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (_) => RegisterScreen(),
                                  ),
                                );
                              },
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
      ),
    );
  }

  _handleLogin() {
    // validate form
    if (!_formKey.currentState!.validate()) return;

    // perform login actions
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => HomePage(isLoggedIn: true),
      ),
    );
  }
}
