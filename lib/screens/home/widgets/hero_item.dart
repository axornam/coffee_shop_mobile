import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/widgets/button.dart';
import 'package:flutter/material.dart';

class GuestHeroCard extends StatelessWidget {
  const GuestHeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 275,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 150,
            padding: EdgeInsets.symmetric(horizontal: 12.5),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(MOON_LIGHT_MINT),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Join the Rewards program to enjoy free beverages, special offers and more!",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      flex: 1,
                      child: CustomButton(
                        title: "JOIN NOW",
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        onPressed: () {},
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: CustomButton(
                        title: "GUEST ORDER",
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        backgroundColor: Color(CREAMY_LATTE),
                        foregroundColor: colorScheme.primary,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 125,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 12.5, vertical: 5),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onPrimary,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 2.5,
                  offset: Offset(0, 2.5),
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already Have an Account?",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.1,
                      ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('LOGIN'),
                    style: ButtonStyle(
                      side: MaterialStatePropertyAll(
                        BorderSide(
                          color: Color(MOON_LIGHT_MINT),
                          width: 2,
                          //style: BorderStyle.none,
                        ),
                      ),
                      shadowColor: MaterialStatePropertyAll(
                        Colors.black87,
                      ),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 18,
                        ),
                      ),
                      foregroundColor: MaterialStatePropertyAll(
                        Color(MOON_LIGHT_MINT),
                      ),
                      backgroundColor: MaterialStatePropertyAll(
                        colorScheme.onPrimary,
                      ),
                      elevation: MaterialStatePropertyAll(5.0),
                      shape: MaterialStatePropertyAll<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoggedInHeroCard extends StatelessWidget {
  const LoggedInHeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 200,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 75,
                padding: EdgeInsets.symmetric(horizontal: 12.5),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(MOON_LIGHT_MINT),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "BONUS REWARDS",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    Text(
                      "Coffee Delivered to your house",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 125,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 12.5, vertical: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onPrimary,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 2.5,
                      offset: Offset(0, 2.5),
                    ),
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Order 2 bags of coffee and get bonus stars!",
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.1,
                          ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Flexible(
                          flex: 3,
                          child: Text(
                            "Order any of your coffee and get an additional 30 stars! Now that's how you get free coffee!",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.0, right: 7.3),
              child: TextButton(
                style: ButtonStyle(
                  elevation: MaterialStatePropertyAll<double>(3.5),
                  shadowColor: MaterialStatePropertyAll(Colors.black87),
                  visualDensity: VisualDensity.compact,
                  alignment: Alignment.center,
                  foregroundColor: MaterialStatePropertyAll<Color>(
                    Theme.of(context).colorScheme.onPrimary,
                  ),
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Theme.of(context).colorScheme.primary,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Shop now",
                  //style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
          ),
          Align(
            //alignment: AlignmentGeometryTween(
            //begin: Alignment.topRight,
            //end: Alignment.centerRight,
            //).evaluate(kAlwaysCompleteAnimation)!,
            alignment: Alignment(1.1, -0.75),
            child: Image(
              image: AssetImage('assets/icons/whole_beans.png'),
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
