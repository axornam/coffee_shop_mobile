import 'package:flutter/material.dart';

class GuestGreeter extends StatelessWidget {
  const GuestGreeter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning!',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Login and get free Coffee!',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 18,
                                  ),
                        ),
                        Image(
                          image: AssetImage('assets/icons/sweets.png'),
                          height: 30,
                          width: 30,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoggedInGreeter extends StatelessWidget {
  const LoggedInGreeter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning Axornam!',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Yay for coffeeeeee!',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    fontSize: 18,
                                  ),
                        ),
                        Image(
                          image: AssetImage('assets/icons/sweets.png'),
                          height: 30,
                          width: 30,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(7.5),
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(15),
                  ),
                ),
                child: Image(
                  image: AssetImage('assets/icons/cool_avatar_m.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
