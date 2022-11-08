import 'dart:async';

import 'package:Test/src/models/api_models/gallery_model.dart';
import 'package:Test/src/models/api_models/user_model.dart';
import 'package:Test/src/services/local/flavor_service.dart';
import 'package:Test/src/services/remote/api_client.dart';
import 'package:Test/src/services/remote/api_result.dart';
import 'package:Test/src/services/remote/interceptors/main_api_interceptor.dart';
import 'package:Test/src/services/remote/network_exceptions.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

mixin ApiViewModel {
  ApiService apiService = Get.find<ApiService>();
}

class ApiService extends GetxService {
  ApiClient? _apiClient;

  ApiService() {
    _apiClient = ApiClient(Dio(), FlavorService.getBaseApi,
        interceptors: [ApiInterceptor()]);
  }

  Future<ApiResult<UserModel>> userLogin(String email, String password) async {
    try {
      var response = await _apiClient?.postReq(
        "/login",
        data: {"email": email, "password": password},
      );
      return ApiResult.success(data: UserModel.fromJson(response.data));
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
    }
  }

  Future<ApiResult<GalleryModel>> getGalleries() async {
    try {
      var response = await _apiClient?.getReq(
        "/background",
      );
      print(response);
      return ApiResult.success(data: GalleryModel.fromJson(response.data));
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
    }
  }

//
// Future<ApiResult<UserDataModel>> userRegistration(
//     String name, String email, String password, BuildContext context) async {
//   try {
//     var response = await _apiClient?.postReq(
//       "/register",
//       data: {"name": name, "email": email, "password": password},
//     );
//     if (response!.statusCode != 200) {
//       print(response.message);
//       context.showToast(context, response.message!);
//     }
//     return ApiResult.success(data: UserDataModel.fromJson(response.data));
//   } catch (e) {
//     context.showToast(
//         context, NetworkExceptions.getDioException(e).toString());
//     return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
//   }
// }
//
// Future<ApiResult<ListResponseWrapper<IngredientsApiRespond>>> getIngredients(
//     BuildContext context) async {
//   try {
//     var response = await _apiClient?.getReq(
//       "/ingrediants",
//     );
//     if (response!.statusCode != 200) {
//       context.showToast(context, response.message!);
//     };
//     return ApiResult.success(
//         data: ListResponseWrapper(
//             IngredientsApiRespond.fromJsonList(response.data ?? []),
//             response.count ?? 0));
//   } catch (e) {
//     context.showToast(
//         context, NetworkExceptions.getDioException(e).toString());
//     return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
//   }
// }
//
// Future<ApiResult<IngredientsApiRespond>> setIngredients(IngredientsBodyData data, BuildContext context) async {
//   try {
//     var response = await _apiClient?.postReq("/ingrediants", data: data);
//     if (response!.statusCode != 200) {
//       context.showToast(context, response.message!);
//     };
//     return ApiResult.success(
//         data: IngredientsApiRespond.fromJson(response.data));
//   } catch (e) {
//     context.showToast(
//         context, NetworkExceptions.getDioException(e).toString());
//     return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
//   }
// }
//
// Future<ApiResult<IngredientsApiRespond>> updateIngredients(int id, IngredientsBodyData data, BuildContext context) async {
//   try {
//     var response = await _apiClient?.putReq("/ingrediants/$id", data: data);
//     if (response!.statusCode != 200) {
//       context.showToast(context, response.message!);
//     };
//     return ApiResult.success(
//         data: IngredientsApiRespond.fromJson(response.data));
//   } catch (e) {
//     context.showToast(
//         context, NetworkExceptions.getDioException(e).toString());
//     return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
//   }
// }
//
// Future<ApiResult<bool>> deleteIngredients(int id, BuildContext context) async {
//   try {
//     var response = await _apiClient?.deleteReq(
//       "/ingrediants/$id",
//     );
//     if (response!.statusCode != 200) {
//       context.showToast(context, response.message!);
//     }
//     ;
//     return ApiResult.success(
//         data: (response.statusCode == 200) ? true : false);
//   } catch (e) {
//     context.showToast(
//         context, NetworkExceptions.getDioException(e).toString());
//     return ApiResult.failure(error: NetworkExceptions.getDioException(e)!);
//   }
// }

}
