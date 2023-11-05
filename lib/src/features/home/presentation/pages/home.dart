import 'package:car_app/src/features/home/presentation/manager/car_model.dart';
import 'package:car_app/src/features/home/presentation/widgets/app_bar_logo.dart';
import 'package:car_app/src/features/home/presentation/widgets/car_card.dart';
import 'package:car_app/src/features/home/presentation/widgets/horizontal_navigation_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectTabBar = 'MODEL S';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          initialIndex: 0,
          length: 4,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.black,
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black87,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
            child: Column(
              children: [
                const AppBarLogo(),
                HorizontalNavBar(
                  onTap: (value) {
                    setState(() {
                      selectTabBar = getSelectedTab(value);
                    });
                  },
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      children: carList
                          .where((element) =>
                              element.name!.toUpperCase() == selectTabBar)
                          .map((e) {
                        return CarCard(carInfo: e);
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getSelectedTab(int index) {
    switch (index) {
      case 0:
        return 'MODEL S';
      case 1:
        return 'MODEL 3';
      case 2:
        return 'MODEL X';
      case 3:
        return 'MODEL Y';
      default:
        return 'MODEL S';
    }
  }
}
