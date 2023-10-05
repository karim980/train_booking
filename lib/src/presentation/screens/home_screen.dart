import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_train_boking/src/core/colors.dart';
import 'package:flutter_train_boking/src/core/strings.dart';
import 'package:flutter_train_boking/src/presentation/widgets/schedule.dart';
import 'package:flutter_train_boking/src/presentation/widgets/service.dart';
import 'package:flutter_train_boking/src/presentation/widgets/trip_type.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        backgroundColor: AppColors.mainColor,
        leading: Padding(
          padding: const EdgeInsets.all(20),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ),
        title: Text(AppStrings.appBarTitle),
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.all(20),
          child: IconButton.outlined(onPressed: () {

          }, icon: Icon(CupertinoIcons.bell_solid)),
        )],
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: TripType(),
              decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Card(
                elevation: 5,
                child: ScheduleWidget(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,bottom: 20),
              child: Text(
                AppStrings.service,
                style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
              ),
            ),
            ServiceWidget(),
          ],
        ),
      ),
    );
  }
}
