import 'package:Test/src/models/api_models/gallery_model.dart';
import 'package:Test/src/services/local/auth_service.dart';
import 'package:Test/src/services/remote/api_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with ApiViewModel, AuthViewModel {
  List<Gallery> galleryData = <Gallery>[].obs;

  @override
  Future<void> onInit() async {
    await getGalleryData();
    super.onInit();
  }

  getGalleryData() async {
    var response = await apiService.getGalleries();
    response.when(success: (response) async {
      if (response.success == true) {
        galleryData = response.gallery ?? [];
        authService.user?.imagePath = response.imagePath;
        update();
      }
    }, failure: (error) {
      return print(error);
    });
  }
}
