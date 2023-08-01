import 'package:flutter/material.dart';

class StickyShowcaseDetails extends StatelessWidget {
  final String title;
  const StickyShowcaseDetails({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
