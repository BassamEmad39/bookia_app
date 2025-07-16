import 'package:bookie_app/core/constants/app_assets.dart';
import 'package:bookie_app/core/utils/app_colors.dart';
import 'package:bookie_app/features/home/presentation/pages/home_screen.dart';
import 'package:bookie_app/features/wishlist/presentation/page/whishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainAppScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    WhishlistScreen(),
    Center(child: Text('Categories')),
    Center(child: Text('Profile')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.homeSvg,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppAssets.homeSvg),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.bookmarkSvg,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppAssets.bookmarkSvg),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.categorySvg,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppAssets.categorySvg),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.profileSvg,
              colorFilter: ColorFilter.mode(
                AppColors.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppAssets.profileSvg),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
