import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';

class RateList extends StatelessWidget {
  const RateList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: rateList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              width: 60,
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
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  customTextWidget(
                      text: rateList[index],
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: index == 1
                          ? ColorConstants.whiteColor
                          : const Color(0xFF71B1A1)),
                  Icon(
                    Icons.star,
                    color: index == 1
                        ? ColorConstants.whiteColor
                        : const Color(0xFF71B1A1),
                    size: 19,
                  )
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}

List<String> rateList = ['5', '4', '3', '2', '1'];
