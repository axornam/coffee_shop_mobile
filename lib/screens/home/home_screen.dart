import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/home/widgets/cart_item.dart';
import 'package:coffee_shop/screens/home/widgets/greeter_item.dart';
import 'package:coffee_shop/screens/home/widgets/hero_item.dart';
import 'package:coffee_shop/widgets/divider_item.dart';
import 'package:coffee_shop/widgets/drink_item.dart';
import 'package:coffee_shop/widgets/favourite_item.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.isLoggedIn});

  final bool isLoggedIn;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _isLoggedIn = widget.isLoggedIn;
  }

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
      //bottomNavigationBar: BottomAppBar(
      //notchMargin: 5.0,
      //shape: CircularNotchedRectangle(),
      //), // can have a notch
      //
      bottomNavigationBar: _buildBottomNavigationBar(),
      //bottomNavigationBar: _buildNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: _isLoggedIn ? _buildAuthorizsedHome() : _buildGuestHome(),
          ),
        ),
      ),
    );
  }

  _buildAuthorizsedHome() {
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

  _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: colorScheme.onPrimary,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      iconSize: 20,
      selectedItemColor: Colors.blueAccent,
      onTap: (index) {},
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.barcode_viewfinder),
          label: "Scan / Pay",
        ),
        BottomNavigationBarItem(
          icon: Icon(FluentIcons.drink_coffee_20_regular),
          label: "Order",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
          label: "Account",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.star),
          label: "Rewards",
        ),
      ],
    );
  }

  _buildNavigationBar() {
    return NavigationBar(
      backgroundColor: colorScheme.onPrimary,
      elevation: 2.0,
      onDestinationSelected: (index) {},
      destinations: <NavigationDestination>[
        NavigationDestination(
          icon: Icon(CupertinoIcons.home),
          label: "Home",
        ),
        NavigationDestination(
          icon: Icon(CupertinoIcons.barcode_viewfinder),
          label: "Scan / Pay",
        ),
        NavigationDestination(
          icon: Icon(FluentIcons.drink_coffee_20_regular),
          label: "Order",
        ),
        NavigationDestination(
          icon: Icon(CupertinoIcons.profile_circled),
          label: "Account",
        ),
        NavigationDestination(
          icon: Icon(CupertinoIcons.star),
          label: "Rewards",
        ),
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
