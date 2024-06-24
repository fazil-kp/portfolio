import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'portfolio_colors.dart';
import '../screens/portfolio/portfolio_main_screen.dart';

class CustomScaffold extends ConsumerWidget {
  final Widget? childWidget;
  final String? enums;
  final bool? hideScaffold;
  const CustomScaffold({super.key, this.childWidget, this.enums, this.hideScaffold = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return hideScaffold == false
        ? Scaffold(
            backgroundColor: PortColor.secondary,
            body: Column(
              children: [
                Expanded(child: childWidget ?? const PortfolioMainScreen()),
              ],
            ),
          )
        : Scaffold(body: childWidget);
  }
}
