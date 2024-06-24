import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class PortfolioTrailingBodyScreen extends StatelessWidget {
  final Widget content;
  const PortfolioTrailingBodyScreen({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height() - 180,
      width: context.width(),
      


      decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
      child: content,
    );
  }
}
