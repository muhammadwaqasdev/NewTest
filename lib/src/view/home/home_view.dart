import 'package:Test/src/widget/GalleryCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: GetBuilder<HomeController>(
          builder: (_c) => GridView.builder(
            itemCount: _c.galleryData.length,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return GalleryCard(
                  title: _c.galleryData[index].name.toString(),
                  image:
                      "${_c.authService.user?.imagePath.toString()}/${_c.galleryData[index].image.toString()}");
            },
          ),
        ),
      ),
    );
  }
}
