import 'package:coffee_shop/config/constants.dart';
import 'package:coffee_shop/models/intro_item.dart';
import 'package:coffee_shop/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final Map<String, Map<String, Map>> a = {};
  int _pageIndex = 0;
  final PageController _pageController = PageController();

  final IntroItem _page1 = IntroItem(
    imagePath: 'assets/icons/customizecoffee.png',
    title: 'Choose and customise your drinks with simplicity',
    subTitle:
        'You want your drink and you want it your way so be bold and customise the way that makes you the happiest!',
  );

  final IntroItem _page2 = IntroItem(
    imagePath: 'assets/icons/coffeetime.png',
    title: 'No time to waste when you need your coffee',
    subTitle:
        "We've crafted a quick and easy way for you to order your favourite coffee or treats thats fast!",
  );

  final IntroItem _page3 = IntroItem(
    imagePath: 'assets/icons/coffeerewards.png',
    title: "Who doesn't love rewards?   We LOVE rewards!",
    subTitle:
        "If you're like us you love getting freebies and rewards! That's why we have the best reward program in the coffee game!",
  );

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: [
          TextButton(
            onPressed: () => _goToLoginPage(),
            child: Text(
              'Skip',
              style: TextStyle(
                color: colorScheme.onBackground,
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: colorScheme.background,
      ),
      body: Container(
        //color: backgroundCoffetColor,
        color: colorScheme.background,
        child: Stack(
          children: [
            PageView(
              onPageChanged: (index) => setState(() => _pageIndex = index),
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              //physics: PageScrollPhysics(),
              pageSnapping: true,
              children: [
                _onBoardingScreens(_page1),
                _onBoardingScreens(_page2),
                _onBoardingScreens(_page3),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image(
                      //loadingBuilder: (_, widget, chunkEvent) {
                      //return chunkEvent.cumulativeBytesLoaded >
                      //chunkEvent.expectedTotalBytes
                      //? widget
                      //: CircularProgressIndicator();
                      //},
                      image: AssetImage(
                        "assets/icons/loading_coffee_${_pageIndex + 1}.png",
                      ),
                      fit: BoxFit.contain,
                      height: 60,
                    ),
                    TextButton(
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                        ),
                        shape: const MaterialStatePropertyAll<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(15)),
                          ),
                        ),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            colorScheme.primary),
                        foregroundColor: MaterialStatePropertyAll<Color>(
                            colorScheme.onPrimary),
                      ),
                      onPressed: () {
                        _pageIndex != 2
                            ? _pageController.jumpToPage(_pageIndex + 1)
                            : _goToLoginPage();
                        //_pageController.nextPage(
                        //duration: const Duration(),
                        //curve: Curves.linear,
                        //);
                      },
                      child: _pageIndex != 2
                          ? const Text('Next')
                          : const Text('Finish'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _goToLoginPage() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (_) => const LoginScreen(),
      ),
    );
  }

  Widget _onBoardingScreens(IntroItem item) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Container(child: item.getImage()),
          const SizedBox(height: 85),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, bottom: 15),
            child: Text(
              item.title,
              maxLines: 2,
              style: TextStyle(
                fontSize: 20,
                color: colorScheme.onBackground,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 45, bottom: 10),
            child: Text(
              item.subTitle,
              maxLines: 4,
              style: TextStyle(
                fontSize: 17,
                color: colorScheme.onBackground,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
