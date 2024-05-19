import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:real_estate_ani/map_view.dart';
import 'package:real_estate_ani/view_provider.dart';

import 'homepage.dart';
import 'widgets/bottom_nav_widget.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewProvider>(builder: (context, view, _) {
      return Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 40),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade,
                    curve: Curves.linear,
                    child: const MapView()));
                view.setViewInt(0);
              },
              child: BottomNavItem(
                icon: Icons.maps_ugc,
                isSelected: view.viewInt == 0,
              ),
            ),
            InkWell(
              onTap: () {
                view.setViewInt(1);
              },
              child: BottomNavItem(
                icon: Icons.messenger_sharp,
                isSelected: view.viewInt == 1,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade,
                    curve: Curves.linear,
                    child: const HomePage()));
                view.setViewInt(2);
              },
              child: BottomNavItem(
                icon: Icons.home_filled,
                isSelected: view.viewInt == 2,
              ),
            ),
            InkWell(
              onTap: () {
                view.setViewInt(3);
              },
              child: BottomNavItem(
                icon: Icons.favorite,
                isSelected: view.viewInt == 3,
              ),
            ),
            InkWell(
              onTap: () {
                view.setViewInt(4);
              },
              child: BottomNavItem(
                icon: Icons.person_2,
                isSelected: view.viewInt == 4,
              ),
            ),
          ],
        ),
      );
    });
  }
}
