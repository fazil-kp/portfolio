import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../helpers/portfolio_colors.dart';
import '../../../../common_widgets/portfolio_trailing_body_screen.dart';

class Service extends StatelessWidget {
  const Service({super.key});

  @override
  Widget build(BuildContext context) {
    return PortfolioTrailingBodyScreen(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text("Services", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          10.height,
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text("I provide various services like Flutter Development, Web Development, Mobile App Development, and many more. I have worked on various projects and have a good understanding of the Flutter framework.", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 14, fontWeight: FontWeight.normal)),
          ),
        ],
      ),
    );
  }
}
