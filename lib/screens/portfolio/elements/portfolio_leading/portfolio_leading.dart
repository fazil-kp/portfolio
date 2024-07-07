import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../helpers/portfolio_colors.dart';
import 'elements/portfolio_leading_footer.dart';
import 'elements/portfolio_leading_body.dart';
import 'elements/portfolio_leading_header.dart';

class PortfolioLeading extends StatelessWidget {
  const PortfolioLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: PortColor.primary),
      height: context.height() - 100,
      child: Column(
        children: [
          50.height, const PortfolioLeadingHeader(), 20.height, const PortfolioLeadingBody(), const Spacer(), const PortfolioLeadingFooter(), 20.height,
        ],
      ),
    );
  }
}
