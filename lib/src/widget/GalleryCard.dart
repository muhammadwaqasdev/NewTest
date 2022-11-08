import 'package:Test/src/configs/styles/app_colors.dart';
import 'package:Test/src/configs/styles/text_theme.dart';
import 'package:flutter/material.dart';

class GalleryCard extends StatelessWidget {
  final String title;
  final String image;

  const GalleryCard({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.darkGrey, width: 2),
        color: Colors.amber,
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.darkGrey, width: 2),
                  color: AppColors.white),
              height: 35,
              child: Center(
                  child: Text(
                title,
                style: TextStyling.heading1,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
