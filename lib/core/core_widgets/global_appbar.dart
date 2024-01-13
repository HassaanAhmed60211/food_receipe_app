import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/widget_links.dart';

class GlobalAppBar extends StatelessWidget {
  const GlobalAppBar({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back),
        color: ColorConstants.blackColor,
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: customTextWidget(
          text: title ?? '', fontWeight: FontWeight.w600, fontSize: 18),
    );
  }
}
