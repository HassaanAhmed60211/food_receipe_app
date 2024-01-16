import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/notification/model/notification_model.dart';
import 'package:icons_plus/icons_plus.dart';

class NotifyListToday extends StatelessWidget {
  const NotifyListToday({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: notificationList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var item = notificationList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 21.0),
          child: Container(
            alignment: Alignment.center,
            width: 315,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9).withOpacity(0.30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(19.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextWidget(
                          text: item.title,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                      Spaces.smallh,
                      SizedBox(
                        width: context.screenWidth * 0.61,
                        child: customTextWidget(
                            text: item.detail,
                            color: const Color(0xFFA9A9A9),
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      ),
                      Spaces.smallh,
                      customTextWidget(
                          text: item.time,
                          color: const Color(0xFFA9A9A9),
                          fontSize: 9,
                          fontWeight: FontWeight.w300),
                    ],
                  ),
                  SizedBox(
                    child: Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 37,
                          height: 37,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFFFE1B3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Icon(
                            FontAwesome.file_solid,
                            color: Color(0xffFF9C00),
                          ),
                        ),
                        Visibility(
                            visible: index.isEven,
                            child: const Positioned(
                              right: 4,
                              child: CircleAvatar(
                                radius: 3,
                                backgroundColor: Color(0xFFFF9B00),
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

List<NotificationModel> notificationList = [
  NotificationModel(
      'New Recipe Alert!',
      'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum',
      '10 mins ago'),
  NotificationModel(
      'New Recipe Alert!',
      'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum',
      '30 mins ago'),
  NotificationModel(
      'Save Recipe Alert!',
      'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum',
      '30 mins ago'),
];
