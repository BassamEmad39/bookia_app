import 'package:bookie_app/core/constants/app_constants.dart';
import 'package:bookie_app/core/services/dio_provider.dart';
import 'package:bookie_app/features/home/data/model/best_seller_response/best_seller_response.dart';
import 'package:bookie_app/features/home/data/model/slider_response/slider_response.dart';

class HomeRepo {
 static Future<SliderResponse?> getSlider() async {
    try {
      var response = await DioProvider.get(endPoint: AppConstants.sliders);
      if (response.statusCode == 200) {
        return SliderResponse.fromJson(response.data);
      } else {
        return null;
      }
    } on Exception catch (_) {
      return null;
    }
  }

 static Future<BestSellerResponse?> getBestSeller() async {
    try {
      var response = await DioProvider.get(endPoint: AppConstants.bestSeller);
      if (response.statusCode == 200) {
        return BestSellerResponse.fromJson(response.data);
      } else {
        return null;
      }
    } on Exception catch (_) {
      return null;
    }
  }
}
