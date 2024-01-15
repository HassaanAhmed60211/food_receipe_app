import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/dashboard/model/product_model.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/top_rating.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.43,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          var item = productList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SizedBox(
              height: context.screenHeight * 0.43,
              width: context.screenWidth * 0.56,
              child: Stack(
                children: [
                  Positioned(
                    top: 90,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 100,
                      decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.0))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedBox(
                          height: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customTextWidget(
                                  textAlign: TextAlign.center,
                                  text: item.name,
                                  color: const Color(0xFF484848),
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                              Spaces.large,
                              customTextWidget(
                                  text: 'Time',
                                  color: const Color(0xFFA9A9A9),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              Spaces.extrasmall,
                              SizedBox(
                                height: 40,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    customTextWidget(
                                        text: item.time,
                                        color: const Color(0xFF484848),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Center(
                                          child: Image.asset(
                                        'assets/icons/bookmark.png',
                                        height: 21,
                                      )),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(item.image),
                      child: const Stack(
                        children: [
                          TopRating(
                            top: 50,
                            right: 0,
                            height: 29,
                            width: 60,
                            fontSize: 15,
                            starSize: 16,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List<ProductModel> productList = [
  ProductModel(
      'Classic Greek Salad', '15 Mins', 'assets/images/crunchy_nut.png'),
  ProductModel(
      'Crunchy Nut Coleslaw', '10 Mins', 'assets/images/greek_salad.png'),
];
