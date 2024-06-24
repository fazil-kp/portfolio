import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../helpers/portfolio_colors.dart';

class PortfolioLeadingBodyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  final VoidCallback? onTap;
  const PortfolioLeadingBodyCard({super.key, required this.icon, required this.title, this.onTap, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(height: 40, width: 40, padding: const EdgeInsets.all(5), decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: PortColor.secondary), child: Icon(icon, size: 20, color: PortColor.white)),
        10.width,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: PortColor.white, fontSize: 12, fontWeight: FontWeight.w400)),
            3.height,
            InkWell(onTap: onTap, child: Text(subTitle, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: PortColor.white, fontSize: 12, fontWeight: FontWeight.bold))),
          ],
        ),
      ],
    );
  }
}
