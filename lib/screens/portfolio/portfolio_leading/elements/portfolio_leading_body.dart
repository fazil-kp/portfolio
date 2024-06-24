import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../common_widgets/portfolio_leading_body_card.dart';

class PortfolioLeadingBody extends StatelessWidget {
  const PortfolioLeadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: SizedBox(
        height: 200,
        child: AnimatedScrollView(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PortfolioLeadingBodyCard( icon: Icons.email, title: "Email", subTitle: "mfazilkp7@gmail.com", onTap: () async { final url = Uri.parse('mailto:mfazilkp7@gmail.com'); await launchUrl(url); }, ),
            30.height,
            PortfolioLeadingBodyCard( icon: Icons.phone_android_outlined, title: "Phone", subTitle: "+91 8281088823", onTap: () async { final url = Uri.parse('tel:8281088823'); await launchUrl(url); }, ),
            30.height,
            const PortfolioLeadingBodyCard( icon: Icons.location_on_outlined, title: "Location", subTitle: "Tirurangadi, Kerala, India", ),
          ],
        ),
      ),
    );
  }
}
