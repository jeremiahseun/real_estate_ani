import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_estate_ani/homepage.dart';
import 'package:real_estate_ani/map_view.dart';
import 'package:real_estate_ani/view_provider.dart';

import 'bottom_nav.dart';

class ViewPage extends StatelessWidget {
  ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ViewProvider>(builder: (context, view, _) {
      return Scaffold(
        bottomNavigationBar: const BottomNavWidget(),
        body: screens[view.viewInt],
      );
    });
  }

  List<Widget> screens = [
    const MapView(),
    Container(),
    const HomePage(),
    Container(),
    Container(),
  ];
}
