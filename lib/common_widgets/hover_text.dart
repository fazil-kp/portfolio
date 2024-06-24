import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helpers/portfolio_colors.dart';
import '../view_model/portfolio_vm.dart';

class HoverText extends ConsumerWidget {
  final String text;
  final VoidCallback onTap;
  final int index;
  const HoverText({super.key, required this.text, required this.onTap, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MouseRegion(
      onEnter: (_) => ref.watch(portfolioVM).setHovering(text, true),
      onExit: (_) => ref.watch(portfolioVM).setHovering(text, false),
      child: InkWell( onTap: onTap, child: Text(text, style: Theme.of(context).textTheme.bodyMedium?.copyWith( color: ref.watch(portfolioVM).pages == index ? PortColor.robinEdgeBlue : ref.watch(portfolioVM).getHovering(text) ? PortColor.aqua : PortColor.white, fontSize: 14, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
