import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';

class CategoryListDashboard extends StatelessWidget {
  const CategoryListDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        itemCount: categoryListDashboard.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = categoryListDashboard[index];
          return Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Container(
              alignment: Alignment.center,
              height: 31,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
              decoration: ShapeDecoration(
                color:
                    index == 0 ? const Color(0xFF119475) : Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: customTextWidget(
                text: item,
                color: index == 0
                    ? ColorConstants.whiteColor
                    : ColorConstants.blackColor,
              ),
            ),
          );
        },
      ),
    );
  }
}

List<String> categoryListDashboard = [
  'All',
  'Indian',
  'Italian',
  'Asian',
  'Chinese'
];
