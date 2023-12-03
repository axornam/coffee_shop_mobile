import 'package:coffee_shop/config/constants.dart';
import 'package:flutter/material.dart';

class DividerItem extends StatelessWidget {
  const DividerItem(
      {super.key, required this.text, this.onPressed, this.seeAllText = ""});

  final String text;
  final String seeAllText;
  //final Function onPressed;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 10),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              seeAllText,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Color(MOON_LIGHT_MINT),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
