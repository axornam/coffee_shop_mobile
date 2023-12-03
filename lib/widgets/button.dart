import 'package:coffee_shop/config/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
    this.verticalPadding = 18,
    this.borderRadius = 20,
    this.elevation = 2.0,
    this.margin = EdgeInsets.zero,
    this.backgroundColor,
    this.foregroundColor,
  });

  final String title;
  final void Function()? onPressed;
  final double verticalPadding;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double borderRadius;
  final double elevation;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      child: TextButton(
        onPressed: onPressed,
        child: Text(title),
        style: ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: verticalPadding),
          ),
          foregroundColor: MaterialStatePropertyAll(
            foregroundColor ?? colorScheme.onPrimary,
          ),
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor ?? colorScheme.primary,
          ),
          elevation: MaterialStateProperty.all<double>(elevation),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
