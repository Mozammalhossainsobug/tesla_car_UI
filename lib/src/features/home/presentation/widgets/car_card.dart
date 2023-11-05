import 'package:car_app/src/core/assets.dart';
import 'package:car_app/src/features/home/domain/entities/car_entity.dart';
import 'package:car_app/src/features/home/presentation/widgets/car_short_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarCard extends StatefulWidget {
  const CarCard({
    super.key,
    required this.carInfo,
  });

  final CarInfo carInfo;

  @override
  State<CarCard> createState() => _CarCardState();
}

class _CarCardState extends State<CarCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.carInfo.isFavourite = !widget.carInfo.isFavourite!;
        });
      },
      child: Container(
        height: size.height * .40,
        width: size.width,
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 20),
        decoration: BoxDecoration(
          color: widget.carInfo.color,
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            colors: [widget.carInfo.color, Colors.black12],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            widget.carInfo.isFavourite!
                ? SvgPicture.asset(
                    Assets.favoriteIcon,
                    height: 25,
                    color: Colors.red,
                  )
                : SvgPicture.asset(
                    Assets.favoriteIcon,
                    height: 25,
                    color: Colors.white60,
                  ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                widget.carInfo.imagePath,
                width: size.width * .80,
                height: size.height * .2,
              ),
            ),
            CarShortInfo(carInfo: widget.carInfo),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.arrow_right_alt_rounded,
                  color: Colors.white,
                  size: 45,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'Book Now',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
