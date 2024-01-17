// ignore_for_file: must_be_immutable

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/modules/bottomnav/controller/nav_controller.dart';
import 'package:food_receipe_app/modules/dashboard/dashboard_screen.dart';
import 'package:food_receipe_app/modules/food%20receipe/search_recipe.dart';
import 'package:food_receipe_app/modules/notification/notification_screen.dart';
import 'package:food_receipe_app/modules/profile/profile_screen.dart';
import 'package:food_receipe_app/modules/saved%20recipe/saved_recipe.dart';
import 'package:icons_plus/icons_plus.dart';

class UserNavBar extends ConsumerWidget {
  UserNavBar({super.key});

  // final NavController nav = Get.put(NavController());
  List<IconData> iconList = [
    // AppIcons.home,
    Icons.home,
    Icons.bookmark_outline,
    // AppIcons.notification,
    Icons.notifications_none,
    // AppIcons.profile,
    FontAwesome.user
  ];

  List children = [
    const DashboardPage(),
    const SavedRecipePage(),
    const NotificationPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navWatch = ref.watch(navProvider);
    return Scaffold(
      extendBody: true,
      // res: false, // fluter 1.x
      resizeToAvoidBottomInset: false, // fluter 2.x
      backgroundColor: ColorConstants.whiteColor,
      body: children[navWatch.bottomNavIndex],
      floatingActionButton: InkWell(
        onTap: () {
          context.pushScreenTo(const SearchReceipePage());
        },
        child: Container(
          width: 56,
          height: 56,
          decoration: ShapeDecoration(
            color: ColorConstants.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: const Padding(
              padding: EdgeInsets.all(18.0),
              child: Icon(
                FontAwesome.plus_solid,
                color: Colors.white,
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: Consumer(builder: (ctx, ref, child) {
        var con = ref.watch(navProvider);
        return AnimatedBottomNavigationBar(
          inactiveColor: Colors.blueGrey[300],

          icons: iconList,
          activeIndex: con.bottomNavIndex,
          activeColor: ColorConstants.primaryColor,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) => con.updateNav(index),
          //other params
        );
      }),
    );
  }
}

class BottomNavigationBarWidget extends ConsumerWidget {
  List<IconData> iconList = [
    // AppIcons.home,
    Icons.home,
    Icons.favorite_border,
    // AppIcons.notification,
    Icons.notifications_none,
    // AppIcons.profile,
    FontAwesome.user
  ];

  BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nav = ref.read(navProvider);
    return AnimatedBottomNavigationBar(
      icons: iconList,
      inactiveColor: Colors.blueGrey[300],
      activeIndex: nav.bottomNavIndex,
      activeColor: ColorConstants.primaryColor,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      // onTap: (index) => navController.updateNav(index),
      onTap: (index) {
        nav.updateNav(index);
        Navigator.pop(context);
        // if (index == 0) {
        //   // If home icon is tapped (index 0), navigate to the home route
        //   Navigator.pushAndRemoveUntil(
        //     context,
        //     MaterialPageRoute(
        //       builder: (ctx) => UserNavBar(),
        //     ), // replace with the route name for your home page
        //     (route) => false, // remove all routes from the stack
        //   );
        // } else {
        //   // For other icons, update the navigation index as usual
        //   navController.updateNav(index);
        // }
      },
      // other params

      //other params
    );
  }
}

class CartFloatingIcon extends StatelessWidget {
  const CartFloatingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushScreenTo(const SearchReceipePage());
      },
      child: Container(
        width: 56,
        height: 56,
        decoration: ShapeDecoration(
          color: ColorConstants.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: const Padding(
            padding: EdgeInsets.all(18.0),
            child: Icon(
              FontAwesome.plus_solid,
              color: Colors.white,
            )),
      ),
    );
  }
}
