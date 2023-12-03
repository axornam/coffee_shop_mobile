import 'package:coffee_shop/config/constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.title,
    required this.controller,
    this.placeholder,
  });

  final String title;
  final String? placeholder;
  final TextEditingController controller;

  //controller: _userNameTextController,
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
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
            controller: controller,
            onTapOutside: (_) {},
            decoration: InputDecoration(
              labelText: placeholder,
              floatingLabelBehavior: FloatingLabelBehavior.never,
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
      ],
    );
  }
}

class PasswordInputField extends StatefulWidget {
  const PasswordInputField({
    super.key,
    required this.title,
    required this.controller,
    this.placeholder,
  });

  final String title;
  final String? placeholder;
  final TextEditingController controller;

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.title,
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
            controller: widget.controller,
            obscureText: _obscureText,
            obscuringCharacter: "*",
            onTapOutside: (_) {},
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: _onShowPassword,
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
              labelText: widget.placeholder,
              floatingLabelBehavior: FloatingLabelBehavior.never,
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
      ],
    );
  }

  _onShowPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
