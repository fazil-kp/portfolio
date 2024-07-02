import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';

import 'portfolio_leading/portfolio_leading.dart';
import 'portfolio_trailing/portfolio_trailing.dart';

class PortfolioMainScreen extends ConsumerWidget {
  const PortfolioMainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Expanded(flex: 1, child: PortfolioLeading()), 20.width, const Expanded(flex: 3, child: PortfolioTrailing()),
            ],
          ),
        ],
      ),
    );
  }
}
