import 'package:flutter/material.dart';

class HorizontalNavBar extends StatelessWidget {
  const HorizontalNavBar({super.key, required this.onTap});

  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      padding: const EdgeInsets.symmetric(vertical: 10),
      isScrollable: true,
      dividerColor: Colors.black38,
      unselectedLabelColor: Colors.black38,
      labelColor: Colors.green,
      onTap: onTap,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 5,
          color: Colors.white60,
        ),
      ),
      tabs: [
        'MODEL S',
        'MODEL 3',
        'MODEL X',
        'MODEL Y',
      ]
          .map((e) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  e,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ))
          .toList(),
    );
  }
}
