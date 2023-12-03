import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/home/widgets/cart_item.dart';
import 'package:coffee_shop/screens/home/widgets/greeter_item.dart';
import 'package:coffee_shop/screens/home/widgets/hero_item.dart';
import 'package:coffee_shop/widgets/divider_item.dart';
import 'package:coffee_shop/widgets/drink_item.dart';
import 'package:coffee_shop/widgets/favourite_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundCoffeeColor,
        shadowColor: Color(LIGHT_GREY),
        elevation: 1.0,
        centerTitle: true,
        actions: [
          CartItem(count: 10),
        ],
        title: Image(
          image: AssetImage('assets/icons/coffeeshot_logo.png'),
          height: 45,
          width: 45,
        ),
      ),
      drawer: NavigationDrawer(
        children: <NavigationDrawerDestination>[],
        onDestinationSelected: (_) => _,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          //physics: FixedExtentScrollPhysics(),
          //physics: ClampingScrollPhysics(),
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              children: [
                LoggedInGreeter(),
                LoggedInHeroCard(),
                SizedBox(height: 5),
                GuestGreeter(),
                GuestHeroCard(),
                DividerItem(text: "Drinks", seeAllText: "See all"),
                _buildDrinksGrid(),
                DividerItem(text: "Your Favourites"),
                _buildFavouriteDrinksGrid(),
              ],
            ),
          ),
        ),
      ),
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
