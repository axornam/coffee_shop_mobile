import 'package:coffee_shop/screens/scan_pay/widgets/tab_bar_views.dart';
import 'package:flutter/material.dart';

class ScanAndPayScreen extends StatefulWidget {
  const ScanAndPayScreen({super.key});

  @override
  State<ScanAndPayScreen> createState() => _ScanAndPayScreenState();
}

class _ScanAndPayScreenState extends State<ScanAndPayScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Tab> myTabs = <Tab>[
    Tab(text: 'Scan & Pay'),
    Tab(text: 'Rewards Only'),
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: myTabs.length,
      initialIndex: 0,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        indicatorWeight: 3,
        controller: _tabController,
        tabs: myTabs,
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
        child: TabBarView(
          controller: _tabController,
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ScanCard(),
                ScanCard(colorPrimary: Colors.blue),
              ],
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
