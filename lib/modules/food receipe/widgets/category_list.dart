import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/time_list.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.screenHeight * 0.04,
        child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 85,
                  height: 27,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: ShapeDecoration(
                    color: index == 5 ? const Color(0xFF71B1A1) : Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFF71B1A1)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: index == 3
                      ? Center(
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            customTextWidget(
                                text: categoryList[index],
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF71B1A1)),
                            const Icon(
                              Icons.star,
                              color: Color(0xFF71B1A1),
                              size: 15,
                            )
                          ],
                        ))
                      : Center(
                          child: customTextWidget(
                              text: categoryList[index],
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: index == 5
                                  ? ColorConstants.whiteColor
                                  : const Color(0xFF71B1A1))),
                ),
              );
            })));
  }
}

List<String> categoryList = [
  'All',
  'Cereal',
  'Vegetables',
  'Dinner',
  'Chinese',
  'Local Dish',
  'Fruit',
  'BreakFast',
  'Spanish',
  'Chinese',
  'Lunch'
];
