import 'package:car_app/src/core/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: SvgPicture.asset(
        Assets.appLogo,
        color: Colors.white,
      ),
    );
  }
}
