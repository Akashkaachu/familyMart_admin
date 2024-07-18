import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:ecommerce_admin/src/core/colors.dart/colors.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/home/home_page.dart';
import 'package:ecommerce_admin/src/shared/presentation/main_pages/profile/profile_page.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> changeValueNotifier = ValueNotifier(0);
List<Widget> pages = [const DashboardScreen(), const ProfilePage()];

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: changeValueNotifier,
        builder: (context, indexValue, child) {
          return Scaffold(
            body: pages[indexValue],
            bottomNavigationBar: BottomBarBubble(
              color: kDarkBlueColor,
              items: [
                BottomBarItem(
                  iconData: Icons.home,
                  label: 'Home',
                ),
                BottomBarItem(
                  iconData: Icons.add,
                  label: 'Add',
                ),
              ],
              onSelect: (index) {
                changeValueNotifier.value = index;
              },
            ),
          );
        });
  }
}
