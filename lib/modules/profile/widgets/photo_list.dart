import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/modules/dialogs/video_dialog.dart';

class PhotoList extends StatelessWidget {
  const PhotoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GridView.builder(
          itemCount: 1,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: context.screenHeight * 0.19,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Container(
              width: context.screenHeight * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                  onTap: () {
                    context.pushScreenTo(const VideoDialog());
                  },
                  child: Image.asset('assets/images/img.png')),
            );
          },
        ),
      ),
    );
  }
}
