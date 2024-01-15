import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';

class TimeList extends StatelessWidget {
  const TimeList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: timeList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 27,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: ShapeDecoration(
                color: index == 1 ? const Color(0xFF71B1A1) : Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFF71B1A1)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                  child: customTextWidget(
                      text: timeList[index],
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: index == 1
                          ? ColorConstants.whiteColor
                          : const Color(0xFF71B1A1))),
            ),
          );
        },
      ),
    );
  }
}

List<String> timeList = ['All', 'Newest', 'Oldest', 'Popularity'];
