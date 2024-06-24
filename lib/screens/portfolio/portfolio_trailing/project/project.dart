import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../helpers/portfolio_colors.dart';
import '../../../../common_widgets/portfolio_trailing_body_screen.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioTrailingBodyScreen(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text("Projects", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          10.height,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text("I have worked on various projects like E-commerce App, Food Delivery App, and many more. I have work", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 14, fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}
