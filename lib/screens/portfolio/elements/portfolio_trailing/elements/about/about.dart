import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../../../helpers/portfolio_colors.dart';
import '../../../../../../common_widgets/portfolio_trailing_body_screen.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioTrailingBodyScreen(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text("About Me", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          10.height,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text("I am a Flutter Developer with 2 years of experience. I have worked on various projects and have a good understanding of the Flutter framework. I have also worked on various projects and have a good understanding of the Flutter framework.", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 14, fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}
