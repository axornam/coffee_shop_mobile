import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/auth/login_screen.dart';
import 'package:coffee_shop/widgets/button.dart';
import 'package:coffee_shop/widgets/input_field.dart';
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
                          InputField(
                            title: "Username",
                            placeholder: "Enter username",
                            controller: _userNameTextController,
                          ),
                          SizedBox(height: 15),
                          InputField(
                            title: "Email of Phone Number",
                            placeholder: 'Type your email or phone number',
                            controller: _emailOrPhoneTextController,
                          ),
                          SizedBox(height: 15),
                          PasswordInputField(
                            title: "Password",
                            placeholder: 'Type your password',
                            controller: _passwordTextController,
                          ),
                          SizedBox(height: 20),
                          CustomButton(
                            title: "REGISTER",
                            onPressed: () {},
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
                          CustomButton(
                            title: "SIGN IN",
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (_) => LoginScreen(),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 18),
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
