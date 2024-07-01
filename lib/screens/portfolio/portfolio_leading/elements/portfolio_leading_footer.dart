import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../common_widgets/portfolio_leading_footer_icon.dart';

class PortfolioLeadingFooter extends StatelessWidget {
  const PortfolioLeadingFooter({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PortfolioLeadingFooterIcon( icon: Image.network('https://img.icons8.com/color/48/000000/github.png', height: 20, width: 20), onTap: () async { final url = Uri.parse('https://github.com/fazil-kp'); await launchUrl(url);}, ),
        10.width,
        PortfolioLeadingFooterIcon( icon: Image.network('https://img.icons8.com/color/48/000000/linkedin.png', height: 20, width: 20), onTap: () async { final url = Uri.parse('https://www.linkedin.com/in/fazil-kp-061459235/'); await launchUrl(url); }, ),
        10.width,
        PortfolioLeadingFooterIcon( icon: Image.network("https://upload.wikimedia.org/wikipedia/commons/6/65/HackerRank_logo.png", height: 20, width: 20), onTap: () async { final url = Uri.parse('https://www.hackerrank.com/profile/mfazilkp7'); await launchUrl(url); }, ),
        10.width,




        
        PortfolioLeadingFooterIcon( icon: Image.network('https://img.icons8.com/color/48/000000/youtube.png', height: 20, width: 20), onTap: () async { final url = Uri.parse('https://www.youtube.com/channel/UCVqYXdZZAwP2dkEDPHXVgSA'); await launchUrl(url); }, ),
      ],
    );
  }
}
