// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'widget/car_detail_informatio.dart';
import 'widget/my_appbar.dart';

class CarDetailScreen extends StatelessWidget {
  final car;

  CarDetailScreen(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/imgs/map.PNG',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          MyAppbar(),
          Positioned(
              left: 24,
              right: 24,
              bottom: 24,
              child: Stack(
                children: [
                  CarDetailInformation(car: car),
                  Positioned(
                    right: 16,
                    child: Image.asset(
                      car.image,
                      height: 75,
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
