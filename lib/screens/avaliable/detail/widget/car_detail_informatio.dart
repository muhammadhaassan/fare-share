import 'package:flutter/material.dart';

import '../../../../constrants.dart';
import '../../../../widget/attribute.dart';

class CarDetailInformation extends StatelessWidget {
  const CarDetailInformation({
    Key? key,
    required this.car,
  }) : super(key: key);

  final car;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 2, right: 2),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: mCardcolor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          CarInfo(car: car),
          Divider(
            height: 16,
            color: Colors.black,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/imgs/profile.PNG',
                height: 80,
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'ALI',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CarInfo extends StatelessWidget {
  const CarInfo({
    Key? key,
    required this.car,
  }) : super(key: key);

  final car;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
