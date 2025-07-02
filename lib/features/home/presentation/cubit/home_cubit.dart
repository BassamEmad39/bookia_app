import 'package:bookie_app/features/home/data/model/best_seller_response/best_seller_response.dart';
import 'package:bookie_app/features/home/data/model/best_seller_response/product.dart';
import 'package:bookie_app/features/home/data/model/slider_response/slider.dart';
import 'package:bookie_app/features/home/data/model/slider_response/slider_response.dart';
import 'package:bookie_app/features/home/data/repo/home_repo.dart';
import 'package:bookie_app/features/home/presentation/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit():super(HomeInitial());

  List<SliderModel> sliders = [];
  List<Product> bestSellers = [];

  getHomeData() async {
    emit(HomeLoadingState());

    try {
      var futures = await Future.value([
        HomeRepo().getSlider(),
        HomeRepo().getBestSeller(),
      ]);
      sliders = ((await futures[0]) as SliderResponse).data?.sliders ?? [];
      bestSellers = ((await futures[1]) as BestSellerResponse).data?.products ?? [];

      emit(HomeSuccessState());
    } on Exception catch (_) {
      emit(HomeErrorState());
    }
  }
}
