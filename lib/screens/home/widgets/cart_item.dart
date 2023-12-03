import 'package:coffee_shop/config/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, this.count = 0});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          IconButton(
            icon: Icon(CupertinoIcons.bag),
            iconSize: 30,
            onPressed: () {},
          ),
          Positioned(
            right: 6,
            top: 7.5,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(FRESH_MINT),
                border: Border.all(width: 1),
              ),
              child: Text(
                count.toString(),
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
