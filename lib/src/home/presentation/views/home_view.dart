import 'package:flutter/material.dart';

import '../../../../core/utils/imports_manager.dart';
import 'widgets/deals_grid_sliver.dart';
import 'widgets/home_ads_sliver.dart';
import 'widgets/home_brief_sliver.dart';
import 'widgets/home_sliver_app_bar.dart';
import 'widgets/recommended_list_sliver.dart';
import 'widgets/title_sliver.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          HomeSliverAppBar(),
          HomeAdsSliver(),
          TitleSliver(
            title: StringsManager.recommended,
            textStyle: TextStylesManager.H1_Regular_30px,
          ),
          RecommendedListSliver(),
          HomeBriefSliver(),
          TitleSliver(
            title: StringsManager.dealsOnFruitsTea,
            textStyle: TextStylesManager.H3_Bold_20px,
          ),
          DealsGridSliver(),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (BuildContext context, int index) {
          //       return Container(
          //         color: index.isOdd ? Colors.white : Colors.black12,
          //         height: 100.0,
          //         child: Center(
          //           child:
          //               Text('$index', textScaler: const TextScaler.linear(5)),
          //         ),
          //       );
          //     },
          //     childCount: 20,
          //   ),
          // ),
        ],
      ),
    );
  }
}
