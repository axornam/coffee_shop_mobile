import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/screens/accounts/accounts_screen.dart';
import 'package:coffee_shop/screens/home/home_screen.dart';
import 'package:coffee_shop/screens/home/widgets/cart_item.dart';
import 'package:coffee_shop/screens/order/order_screen.dart';
import 'package:coffee_shop/screens/rewards/rewards_screen.dart';
import 'package:coffee_shop/screens/scan_pay/scan_and_pay.dart';
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
  int _currentPage = 0;
  List<Widget> _SCREENS = [];

  @override
  void initState() {
    super.initState();
    _SCREENS = [
      HomeScreen(isLoggedIn: widget.isLoggedIn),
      ScanAndPayScreen(),
      OrderScreen(),
      AccountsScreen(),
      RewardsScreen(),
    ];
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
      //bottomNavigationBar:_buildBottomAppBar(), // can have a notch
      //bottomNavigationBar: _buildNavigationBar(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          //child: _isLoggedIn ? _buildAuthorizedHome() : _buildGuestHome(),
          child: _SCREENS[_currentPage],
        ),
      ),
    );
  }

  _changeScreen(int screenId) async {
    await Future.delayed(Duration(milliseconds: 250));
    setState(() {
      _currentPage = screenId;
    });
  }

  _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: colorScheme.onPrimary,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      iconSize: 20,
      currentIndex: _currentPage,
      selectedItemColor: Colors.blueAccent,
      onTap: (index) => _changeScreen(index),
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

  _buildBottomAppBar() {
    return BottomAppBar(
      notchMargin: 5.0,
      shape: CircularNotchedRectangle(),
    );
  }

  _buildNavigationBar() {
    return NavigationBar(
      backgroundColor: colorScheme.onPrimary,
      elevation: 2.0,
      selectedIndex: _currentPage,
      onDestinationSelected: (index) => _changeScreen(index),
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
}
