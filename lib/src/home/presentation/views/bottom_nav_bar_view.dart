import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/imports_manager.dart';
import '../../../categories/presentation/views/categories_view.dart';
import 'home_view.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  late PageController _pageController;
  late int _bottomNavIndex;
  late List<String> _icons;
  late List<String> _activeIcons;
  late List<Widget> _pages;
  @override
  void initState() {
    _pages = const [
      HomeView(),
      CategoriesView(),
      HomeView(),
      HomeView(),
    ];
    _icons = [
      ImagesManager.home,
      ImagesManager.categories,
      ImagesManager.favourite,
      ImagesManager.more
    ];
    _activeIcons = [
      ImagesManager.homeActive,
      ImagesManager.categoriesActive,
      ImagesManager.favourite,
      ImagesManager.more
    ];
    _bottomNavIndex = 0;
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _pages,
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        height: SizesManager.s80,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.none,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapWidth: 0,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() {
          _bottomNavIndex = index;
          _pageController.jumpToPage(
            index,
          );
        }),
        backgroundColor: ColorsManager.greyLight,
        itemCount: _icons.length,
        tabBuilder: (int index, bool isActive) {
          return Center(
            child: CircleAvatar(
              backgroundColor:
                  isActive ? ColorsManager.blueGrey : ColorsManager.greyLight,
              radius: SizesManager.s32,
              child: Image.asset(
                isActive ? _activeIcons[index] : _icons[index],
                width: SizesManager.s32,
                height: SizesManager.s32,
              ),
            ),
          );
        },
        //other params
      ),
    );
  }
}
