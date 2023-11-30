import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _userNameTextController = TextEditingController();
  final TextEditingController _emailOrPhoneTextController =
      TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _userNameTextController.dispose();
    _passwordTextController.dispose();
    _emailOrPhoneTextController.dispose();
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
                      padding: EdgeInsets.only(left: 35, right: 35, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign Up',
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
                      padding: EdgeInsets.only(left: 35, right: 35, top: 10),
                      child: Text(
                        "We're so excited you're ready to become a part of coffee network! don't forget to check out our perks!",
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w900,
                          color: colorScheme.primary,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 15),
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
                                  vertical: 18,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Text(
                                'Email or Phone Number',
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
                              controller: _emailOrPhoneTextController,
                              onTapOutside: (_) {},
                              decoration: InputDecoration(
                                labelText: 'Type your email or phone number',
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
                          SizedBox(height: 15),
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
                              obscureText: true,
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
                          SizedBox(height: 20),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('REGISTER'),
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
                          SizedBox(height: 20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      "Already have an account?",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: colorScheme.secondary,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 15),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (_) => LoginScreen(),
                                ),
                              );
                            },
                            child: Text('SIGN IN'),
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
                          SizedBox(height: 15),
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
