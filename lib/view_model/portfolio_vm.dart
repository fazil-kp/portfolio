import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PortfolioVM extends ChangeNotifier {
  int pages = 0;
  final List<String> titles = ['About Me', 'Services', 'Projects', 'Contact'];
  //! for changing the theme of the portfolio main screen
  bool isLightTheme = true;

  //! for hovering text color in the portfolio main screen trailing section

  Map<String, bool> isHovering = {'About': false, 'Services': false, 'Projects': false, 'Contact': false};
  bool getHovering(String key) => isHovering[key] ?? false;

  void setHovering(String key, bool value) {
    isHovering[key] = value;
    notifyListeners();
  }

  void refresh() {
    notifyListeners();
  }
}

final portfolioVM = ChangeNotifierProvider<PortfolioVM>((ref) => PortfolioVM());
