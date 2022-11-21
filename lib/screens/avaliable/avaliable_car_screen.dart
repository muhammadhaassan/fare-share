import 'package:flutter/material.dart';
import 'package:rentacar_2/constrants.dart';
import 'package:rentacar_2/model/car.dart';

import '../../widget/attribute.dart';
import 'widget/car_information.dart';
import 'widget/car_list_item.dart';

class AvaliableCarsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimarycolor,
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) => CarLisTitem(index),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mCardcolor,
      elevation: 8.0,
      title: Text('Avaliable Car'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
