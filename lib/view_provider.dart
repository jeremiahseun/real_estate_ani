import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'constants/enums.dart';

class ViewProvider extends ChangeNotifier {
  double width = 80;
  MapDetailsView mapDetailsView = MapDetailsView.price;

  //* Animation duration
  final firstMove = 1000.ms;
  final secondDelay = 1500.ms;
  final secondMove = 1000.ms;
  final thirdDelay = 2500.ms;
  final thirdMove = 1000.ms;
  final fourthDelay = 3500.ms;
  final fourthMove = 1000.ms;

  int viewInt = 2;

  void setViewInt(int viewInt) {
    this.viewInt = viewInt;
    notifyListeners();
  }

  void setNoLayerWidth() {
    width = 40;
    mapDetailsView = MapDetailsView.withoutLayer;
    notifyListeners();
  }

  void setPriceWidth() {
    width = 80;
    mapDetailsView = MapDetailsView.price;
    notifyListeners();
  }
}
