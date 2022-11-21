import 'package:flutter/material.dart';
import 'package:rentacar_2/model/car.dart';
import 'package:rentacar_2/screens/avaliable/detail/car_detail_screen.dart';
import 'package:rentacar_2/screens/avaliable/widget/car_information.dart';
import '../../../constrants.dart';

class CarLisTitem extends StatelessWidget {
  const CarLisTitem(
    this.index, {
    Key? key,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    var car = carList[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CarDetailScreen(car);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 25),
        child: Stack(
          children: [
            CarInformation(car: car),
            Positioned(
              right: 45,
              child: Image.asset(
                car.image,
                height: 75,
              ),
            )
          ],
        ),
      ),
    );
  }
}
