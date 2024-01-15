import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_receipe_app/configs/constants/assets_configs/assets_constants.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/custom_field.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/bottom_sheet.dart';

// ignore: must_be_immutable
class TopSearchBar extends StatelessWidget {
  TopSearchBar({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.screenWidth * 0.6,
            child: customTextField(
              height: 55,
              hintText: 'Search recipe',
              controller: searchController,
              prefixIcon: const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 19),
                child: Icon(
                  Icons.search,
                  color: Color(0xFFABB3BB),
                ),
              ),
            ),
          ),
          const Spacer(),
          InkWell(
              onTap: () {
                filterBottomSheet(context);
              },
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.primaryColor),
                child: Center(
                  child: SvgPicture.asset(IconsString.filter_icon, height: 25),
                ),
              ))
        ]);
  }
}
