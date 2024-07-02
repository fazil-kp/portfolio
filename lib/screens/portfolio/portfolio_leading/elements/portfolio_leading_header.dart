import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../helpers/portfolio_colors.dart';

class PortfolioLeadingHeader extends StatelessWidget {
  const PortfolioLeadingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 200, width: 200, decoration: BoxDecoration(color: PortColor.secondary, shape: BoxShape.circle, image: const DecorationImage(image: AssetImage('assets/images/profile.png'), fit: BoxFit.cover))),
        20.height,
        Text('MOHAMMED FAZIL KP', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 20, fontWeight: FontWeight.bold)),
        20.height,
        CarouselSlider( options: CarouselOptions(autoPlay: true, autoPlayInterval: const Duration(seconds: 2), enlargeCenterPage: true, height: 40), items: ['Software Developer', 'Flutter Developer', 'UI/UX Designer', 'Content Creator'].map((i) { return Builder( builder: (BuildContext context) { return Container( padding: const EdgeInsets.all(10), decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: PortColor.secondary), child: Text(i, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: PortColor.white, fontSize: 14, fontWeight: FontWeight.bold)), ); }, ); }).toList(), ),
        20.height,
        Padding(padding: const EdgeInsets.only(left: 40, right: 40), child: Divider(color: PortColor.secondary)),
      ],
    );
  }
}
