import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/custom_elevated_button.dart';
import 'package:food_receipe_app/core/core_widgets/global_appbar.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/ingrident/widgets/ingrident_tab.dart';
import 'package:food_receipe_app/modules/ingrident/widgets/procedure_tab.dart';
import 'package:food_receipe_app/modules/ingrident/widgets/top_ingrident.dart';

class IngridentPage extends StatefulWidget {
  const IngridentPage({super.key});

  @override
  State<IngridentPage> createState() => _IngridentPageState();
}

class _IngridentPageState extends State<IngridentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: GlobalAppBar(isDot: true),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const TopIngridentImage(),
                Spaces.smallh,
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: context.screenWidth * 0.58,
                        child: customTextWidget(
                            lineHeight: 1.5,
                            text: 'Spicy chicken burger with French fries',
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      customTextWidget(
                          lineHeight: 1.5,
                          text: '(13k Reviews)',
                          fontSize: 15,
                          color: const Color(0xFFA9A9A9),
                          fontWeight: FontWeight.w400),
                    ]),
                Spaces.smallh,
                ListTile(
                  contentPadding: const EdgeInsets.all(0),
                  leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/images/recipe_image.png',
                        fit: BoxFit.fitWidth,
                      )),
                  title: customTextWidget(
                      text: 'Laura wilson',
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  subtitle: Row(
                    children: [
                      const Icon(
                        Icons.location_on_sharp,
                        color: Color(0xff71B1A1),
                        size: 20,
                      ),
                      customTextWidget(
                          text: 'Lagos, Nigeria',
                          fontSize: 14,
                          color: const Color(0xFFA9A9A9),
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                  trailing: customElevatedBtnWidget(
                      child: customTextWidget(
                          text: 'Follow',
                          color: ColorConstants.whiteColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      func: () {}),
                ),
                Spaces.smallh,
                ButtonsTabBar(
                    unselectedDecoration: BoxDecoration(
                        color: ColorConstants.primaryColor,
                        borderRadius: BorderRadius.circular(18)),
                    height: 55,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 54),
                    backgroundColor: Colors.transparent,
                    unselectedLabelStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    labelStyle: const TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold),
                    tabs: const [
                      Tab(
                        text: "Ingrident",
                      ),
                      Tab(
                        text: "Procedure",
                      )
                    ]),
                const Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      IngridentTab(),
                      ProcedureTab(),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
