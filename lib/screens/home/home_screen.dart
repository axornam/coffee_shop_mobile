import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/home/widgets/greeter_item.dart';
import 'package:coffee_shop/screens/home/widgets/hero_item.dart';
import 'package:coffee_shop/widgets/divider_item.dart';
import 'package:coffee_shop/widgets/drink_item.dart';
import 'package:coffee_shop/widgets/favourite_item.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.isLoggedIn});

  final bool isLoggedIn;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoggedIn = false;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _isLoggedIn = widget.isLoggedIn;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: _home(),
      ),
    );
  }

  _home() {
    return _isLoggedIn ? _buildAuthorizedHome() : _buildGuestHome();
  }

  _buildAuthorizedHome() {
    return Column(
      children: [
        SizedBox(height: 5),
        LoggedInGreeter(),
        LoggedInHeroCard(),
        DividerItem(text: "Drinks", seeAllText: "See all"),
        _buildDrinksGrid(),
        DividerItem(text: "Your Favourites"),
        _buildFavouriteDrinksGrid(),
      ],
    );
  }

  _buildGuestHome() {
    return Column(
      children: [
        SizedBox(height: 5),
        GuestGreeter(),
        GuestHeroCard(),
        DividerItem(text: "Drinks", seeAllText: "See all"),
        _buildDrinksGrid(),
      ],
    );
  }

  _buildDrinksGrid() {
    return Container(
      height: 350,
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 20),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => DrinkItem(
          text: "Hot Coffee",
          imgUrl: "assets/icons/hot_tea.svg",
          //onPressed: () {}, // override the internal onPress which navigates to more drinks of this category page
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          mainAxisExtent: 125,
        ),
      ),
    );
  }

  _buildFavouriteDrinksGrid() {
    return Container(
      height: 200,
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 20),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => FavouriteDrinkItem(
          text: "Iced Pumking Spice",
          imgUrl: "assets/icons/iced_latte.svg",
          //onPressed: () {}, // override the internal onPress which navigates to more drinks of this category page
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 20,
          mainAxisExtent: 125,
        ),
      ),
    );
  }
}
