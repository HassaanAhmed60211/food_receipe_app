import 'package:flutter/material.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/bottom_text.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/model/recipe_item_model.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/top_rating.dart';

class SearchItemList extends StatelessWidget {
  const SearchItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: receipeData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 18.0, mainAxisSpacing: 18.0),
        itemBuilder: ((context, index) {
          var item = receipeData[index];
          return Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    item.image,
                  ),
                  fit: BoxFit.cover),
            ),
            child: Container(
              width: 150,
              height: 150,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: [Colors.black.withOpacity(0), Colors.black],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Stack(
                children: [
                  const TopRating(),
                  BottomTextTitle(
                    title: item.title,
                    subTitle: item.subTitle,
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
