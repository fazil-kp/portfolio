import 'package:flutter/material.dart';

import '../helpers/portfolio_colors.dart';

class PortfolioLeadingFooterIcon extends StatelessWidget {
  final Widget icon;
  final VoidCallback? onTap;
  const PortfolioLeadingFooterIcon({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap, child: CircleAvatar(radius: 15, backgroundColor: PortColor.secondary, child: icon));
  }
}
