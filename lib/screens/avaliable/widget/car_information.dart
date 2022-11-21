import 'package:flutter/material.dart';
import 'package:rentacar_2/model/car.dart';

import '../../../constrants.dart';
import '../../../widget/attribute.dart';

class CarInformation extends StatelessWidget {
  const CarInformation({
    Key? key,
    required this.car,
  }) : super(key: key);

  final car;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 24, right: 24),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: mCardcolor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\RS ${car.price}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'price Per day',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Attribute(
                value: car.brand,
                name: 'Brand',
              ),
              Attribute(
                value: car.model,
                name: 'Model No',
              ),
              Attribute(
                value: car.fuelcoms,
                name: 'Fuel cons',
              ),
            ],
          )
        ],
      ),
    );
  }
}
