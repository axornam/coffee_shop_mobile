import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem({
    super.key,
    required this.text,
    required this.imgUrl,
    this.onPressed,
  });

  final String text;
  final String imgUrl;
  //final Function onPressed;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: 10,
      height: 100,
      decoration: BoxDecoration(
        //color: Color(FROTHY_WHITE),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(
          Radius.circular(7.5),
        ),
      ),
      child: GestureDetector(
        onTap: onPressed ?? _onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FadeInImage.assetNetwork(
              placeholder: "Loading...",
              image: (imgUrl),
              imageErrorBuilder: (_, __, ___) => SvgPicture.asset(
                'assets/icons/iced_coffee.svg',
                width: 70,
                height: 70,
              ),
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  void Function()? _onPressed() {
    // navigate to gategoris list
    return null;
  }
}
