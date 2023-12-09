import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScanCard extends StatelessWidget {
  const ScanCard({super.key, this.colorPrimary = Colors.black});

  final Color colorPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      width: 340,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
          colors: [
            colorPrimary,
            Colors.black54,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Rewards',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.star_lefthalf_fill,
                    color: Colors.white,
                  ),
                  Text(
                    '1300',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "\$42,32",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              Icon(
                CupertinoIcons.barcode_viewfinder,
                size: 240,
                color: Colors.white,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        CupertinoIcons.money_dollar_circle,
                        color: Colors.white,
                      ),
                      Text(
                        'Add Funds',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'Manage',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
