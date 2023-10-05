import 'package:flutter/material.dart';
import 'package:flutter_train_boking/src/core/colors.dart';
import 'package:flutter_train_boking/src/core/strings.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            scheduleWidget(text: 'Colombo Fort', title: AppStrings.from),
            SizedBox(
              height: 10,
            ),
            scheduleWidget(text: 'Kandy', title: AppStrings.to),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                scheduleWidgetSm(
                    text: AppStrings.date, icon: Icons.calendar_month, title: 'Date :'),
                Spacer(),
                scheduleWidgetSm(
                    text: '2', icon: Icons.people, title: AppStrings.passengers),
              ],
            ),
         SizedBox(
              height: 15,
            ),
            button(),

          ],
        ),
      ),
    );
  }
}

Widget scheduleWidget({required String text, required String title}) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5, left: 4),
          child: Text(title),
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            prefixIcon: Icon(Icons.location_on_outlined),
            suffixIcon: Icon(Icons.keyboard_arrow_down),
            label: Text(text),
          ),
        ),
      ],
    );

Widget scheduleWidgetSm(
        {required String text,
        required IconData icon,
        required String title}) =>
    Row(
      children: [
        Container(
          width: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5, left: 4),
                child: Text(title),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: Icon(icon),
                  label: Text(text),
                ),
              ),
            ],
          ),
        ),
      ],
    );

Widget button() => ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(AppColors.secColor),
    ),
    onPressed: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 70),
      child: Text('search train'),
    ));
