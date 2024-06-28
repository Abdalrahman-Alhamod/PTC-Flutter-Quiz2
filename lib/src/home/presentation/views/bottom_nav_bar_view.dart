import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ptc_quiz2/core/utils/imports_manager.dart';
import 'package:ptc_quiz2/src/home/presentation/views/home_view.dart';

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
  @override
  void initState() {
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
        controller: _pageController,
        children: const [
          HomeView(),
          HomeView(),
          HomeView(),
          HomeView(),
        ],
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
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
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
