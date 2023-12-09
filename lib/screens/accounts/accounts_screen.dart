import 'package:coffee_shop/screens/home/widgets/greeter_item.dart';
import 'package:coffee_shop/widgets/divider_item.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountsScreen extends StatefulWidget {
  const AccountsScreen({super.key});

  @override
  State<AccountsScreen> createState() => _AccountsScreenState();
}

class _AccountsScreenState extends State<AccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LoggedInGreeter(),
          // Profile Section
          _buildProfileSection(),
          // Security Section
          _buildSecuritySection(),
          // Notifications Section
          _buildNotificationSection(),
        ],
      ),
    );
  }

  _buildNotificationSection() {
    return Column(
      children: [
        DividerItem(text: "Notification Preferences"),
      ],
    );
  }

  _buildSecuritySection() {
    return Column(
      children: [
        DividerItem(text: "Security"),
        ListTile(
          title: Text("2-factor authentication"),
          trailing: Switch.adaptive(
            value: true,
            onChanged: (_) {},
          ),
        ),
        ListTile(
          title: Text("Face ID"),
          trailing: Switch.adaptive(
            value: true,
            onChanged: (_) {},
          ),
        ),
        ListTile(
          title: Text("Passcode Lock"),
          trailing: Switch.adaptive(
            value: false,
            onChanged: (_) {},
          ),
        ),
      ],
    );
  }

  _buildProfileSection() {
    return Column(
      children: [
        DividerItem(text: "Profile"),
        ListTile(
          title: Text("Personal Info"),
          trailing: Icon(CupertinoIcons.info),
          onTap: () {},
        ),
        ListTile(
          title: Text("Cards & Payments"),
          trailing: Icon(CupertinoIcons.creditcard),
          onTap: () {},
        ),
        ListTile(
          title: Text("Transaction History"),
          trailing: Icon(FluentIcons.history_16_regular),
          //trailing: Icon(CupertinoIcons.category),
          onTap: () {},
        ),
        ListTile(
          title: Text("Privacy & Data"),
          trailing: Icon(CupertinoIcons.hand_raised),
          onTap: () {},
        ),
        ListTile(
          title: Text("Account ID"),
          trailing: Icon(FluentIcons.card_ui_20_regular),
          onTap: () {},
        ),
      ],
    );
  }
}
