import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_boking/src/core/colors.dart';
import 'package:flutter_train_boking/src/core/strings.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          ServicesTrin(data: 'Live Train', icon: Icons.train_outlined),
          Spacer(),
          ServicesTrin(data: 'Train Schedule', icon: Icons.calendar_month),
          Spacer(),
          ServicesTrin(data: 'Map', icon: CupertinoIcons.map_fill)
        ],
      ),
    );
  }
}

Widget ServicesTrin(
    {
      required String data,
      required IconData icon
    }) => Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.gray,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              icon,
              size: 70,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(data,style: TextStyle(fontSize: 16),)),
        ),

      ],
    );
