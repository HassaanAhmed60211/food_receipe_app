import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/reviews/review_model.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: reviewList.length,
        itemBuilder: (context, index) {
          var item = reviewList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: context.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: SizedBox(
                      child: Image.asset(
                        item.image,
                      ),
                    ),
                    title: customTextWidget(
                        text: item.name,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                    subtitle: customTextWidget(
                        text: item.time,
                        color: const Color(0xFFA9A9A9),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  customTextWidget(
                      lineHeight: 1.6,
                      text: item.comment,
                      color: const Color(0xFF484848),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                  Spaces.smallh,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xFFDBEBE7),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: customTextWidget(
                            text: '👍 ${item.thumbHigh}',
                            color: const Color(0xFFA9A9A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      Spaces.smallw,
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xFFDBEBE7),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: customTextWidget(
                            text: '👎 ${item.thumbLow}',
                            color: const Color(0xFFA9A9A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

List<ReviewModel> reviewList = [
  ReviewModel(
      'assets/images/review_bella.png',
      'Bella Throne',
      'June 12, 2020 - 19:35',
      'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate velit esse cillum',
      '9',
      '2'),
  ReviewModel(
      'assets/images/review_oshana.png',
      'Christopher Oshana',
      'June 12, 2020 - 19:35',
      'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.',
      '7',
      '1'),
  ReviewModel(
      'assets/images/review_kyle.png',
      'Kyle Austin',
      'June 12, 2020 - 19:35',
      'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.',
      '7',
      '1'),
  ReviewModel(
      'assets/images/review_wilson.png',
      'Jeniffern Wilson',
      'June 12, 2020 - 19:35',
      'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.tempor incididunt ut labore et dolore,inise voluptate',
      '3',
      '1'),
  ReviewModel(
      'assets/images/review_kate.png',
      'Kate Johnson',
      'June 12, 2020 - 19:35',
      'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.tempor incididunt ut labore et dolore,inise voluptate',
      '10',
      '1'),
];
