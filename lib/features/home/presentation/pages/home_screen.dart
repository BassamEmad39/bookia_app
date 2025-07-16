import 'package:bookie_app/core/constants/app_assets.dart';
import 'package:bookie_app/features/home/presentation/cubit/home_cubit.dart';
import 'package:bookie_app/features/home/presentation/cubit/home_state.dart';
import 'package:bookie_app/features/home/presentation/widgets/best_seller_list.dart';
import 'package:bookie_app/features/home/presentation/widgets/home_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHomeData(),
      child: Scaffold(
        appBar: AppBar(
          title: SvgPicture.asset(AppAssets.logoSvg, width: 100),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppAssets.searchSvg),
            ),
          ],
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            var cubit = context.read<HomeCubit>();
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(25),
                  HomeSlider(sliders: cubit.sliders),
                  Gap(15),
                  BestSellerList(products: cubit.bestSellers),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
