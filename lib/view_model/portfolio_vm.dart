import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//! this is the Riverpod  for the PortfolioVM
final portfolioVM = ChangeNotifierProvider<PortfolioVM>((ref) => PortfolioVM());

class PortfolioVM extends ChangeNotifier {
  //! this is the index of the portfolio main screen trailing header section (IndexedStack)
  int pages = 0;

  //! this is the list of titles for the portfolio main screen trailing header section
  final List<String> titles = ['About Me', 'Services', 'Projects', 'Contact'];

  //! for changing the theme of the portfolio main screen
  bool isLightTheme = true;

  //! for hovering text color in the portfolio main screen trailing section (isHovering && setHovering)

  Map<String, bool> isHovering = {'About': false, 'Services': false, 'Projects': false, 'Contact': false};
  bool getHovering(String key) => isHovering[key] ?? false;

  void setHovering(String key, bool value) {
    isHovering[key] = value;
    refresh();
  }

  //! this is for refreshing ui section
  void refresh() {
    notifyListeners();
  }
}
