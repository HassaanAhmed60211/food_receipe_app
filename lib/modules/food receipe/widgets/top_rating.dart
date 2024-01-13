import 'package:flutter/material.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';

class TopRating extends StatelessWidget {
  const TopRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 10,
        right: 10,
        child: Container(
          width: 37,
          height: 16,
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: ShapeDecoration(
            color: Color(0xFFFFE1B3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 8,
                  height: 8,
                  clipBehavior: Clip.none,
                  child: const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 8,
                  )),
              const SizedBox(width: 3),
              customTextWidget(
                  text: '4.0',
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.right,
                  fontSize: 7.0),
            ],
          ),
        ));
  }
}
