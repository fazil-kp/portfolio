import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../helpers/portfolio_colors.dart';
import '../../../../common_widgets/portfolio_trailing_body_screen.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioTrailingBodyScreen(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text("Contact", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          10.height,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text("You can contact me on my email address or phone number. I have worked on various projects and have a good understanding of the Flutter framework.", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 14, fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}
