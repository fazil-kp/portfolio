import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:portfolio/view_model/portfolio_vm.dart';

import '../../../common_widgets/hover_text.dart';
import '../../../helpers/portfolio_colors.dart';
import 'about/about.dart';
import 'contact/contact.dart';
import 'project/project.dart';
import 'service/service.dart';

class PortfolioTrailing extends ConsumerWidget {
  const PortfolioTrailing({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: PortColor.primary),
      height: context.height() - 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(ref.watch(portfolioVM).titles[ref.watch(portfolioVM).pages], style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PortColor.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    5.height,
                    Container(height: 5, width: 50, decoration: BoxDecoration(color: PortColor.secondary, borderRadius: BorderRadius.circular(10))),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(color: PortColor.secondary.withOpacity(0.5), borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomLeft: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HoverText(text: "About", onTap: () => {ref.watch(portfolioVM).pages = 0, ref.watch(portfolioVM).refresh()}, index: 0),
                      HoverText(text: "Services", onTap: () => {ref.watch(portfolioVM).pages = 1, ref.watch(portfolioVM).refresh()}, index: 1),
                      HoverText(text: "Projects", onTap: () => {ref.watch(portfolioVM).pages = 2, ref.watch(portfolioVM).refresh()}, index: 2),
                      HoverText(text: "Contact", onTap: () => {ref.watch(portfolioVM).pages = 3, ref.watch(portfolioVM).refresh()}, index: 3),
                    ],
                  ),
                ),
              ),
            ],
          ),
          10.height,
          Expanded(
            child: IndexedStack(
              index: ref.watch(portfolioVM).pages,
              children: const [About(), Service(), Project(), Contact()],
            ),
          ),
        ],
      ),
    );
  }
}
