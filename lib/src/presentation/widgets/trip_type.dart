import 'package:flutter/material.dart';
import 'package:flutter_train_boking/src/core/colors.dart';
import 'package:flutter_train_boking/src/core/strings.dart';

class TripType extends StatelessWidget {
  const TripType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.whtColor
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            defContainer(text: AppStrings.oneWay),
            Spacer(),
            defContainer(text: AppStrings.roundTrip),

          ],
        ),
      ),
    );
  }
}

Widget bottomTitle ({required String text}) =>MaterialButton(
  onPressed: () {

  },
child: Padding(
  padding: const EdgeInsets.symmetric(vertical: 20),
  child:   Text(text,style: TextStyle(color: Colors.white,fontSize: 20),),
),
);

Widget defContainer ({required String text})=>Container(
  width: 140,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
      color: AppColors.secColor
  ),
  child: bottomTitle(text: text),
);