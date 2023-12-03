import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouriteDrinkItem extends StatelessWidget {
  const FavouriteDrinkItem({
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.5),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      CupertinoIcons.heart_fill,
                      size: 18,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            FadeInImage.assetNetwork(
              placeholder: "Loading...",
              image: (imgUrl),
              imageErrorBuilder: (_, __, ___) => SvgPicture.asset(
                "assets/icons/iced_latte.svg",
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
