import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:sticky_showcase/feature/sticky_showcase/presentation/sticky_showcase_details.dart';

class StickyShowcase extends StatelessWidget {
  const StickyShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 20,
                (context, index) => StickyHeader(
                  header: Container(
                    height: 38,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      'Title $index'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StickyShowcaseDetails(
                            title: 'Title $index',
                          ),
                        ),
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        height: 146,
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            'Subtitle $index',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
