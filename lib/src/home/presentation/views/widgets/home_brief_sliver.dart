import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import '../../../domain/entities/home_brief.dart';

class HomeBriefSliver extends StatefulWidget {
  const HomeBriefSliver({
    super.key,
  });

  @override
  State<HomeBriefSliver> createState() => _HomeBriefSliverState();
}

class _HomeBriefSliverState extends State<HomeBriefSliver> {
  late final ScrollController _scrollController;
  late int _currentIndex = 0;
  late final List<HomeBrief> _briefList;
  @override
  void initState() {
    super.initState();
    _briefList = [
      HomeBrief(
        number: 346,
        unit: StringsManager.usd,
        description: StringsManager.yourTotalSavings,
      ),
      HomeBrief(
        number: 215,
        unit: StringsManager.hrs,
        description: StringsManager.yourTimeSaved,
      ),
      HomeBrief(
        number: 346,
        unit: StringsManager.usd,
        description: StringsManager.yourTotalSavings,
      ),
    ];
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final int index = (_scrollController.offset / 100).round();
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(
        0,
        SizesManager.m28,
        0,
        SizesManager.m28,
      ),
      sliver: SliverToBoxAdapter(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 130, // Set your desired height here
          ),
          child: ListView.builder(
            controller: _scrollController,
            itemCount: _briefList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final bool isCurrent = index == _currentIndex;
              final bool isLast = index != 2;
              return HomeBriefBox(
                isLast: isLast,
                isCurrent: isCurrent,
                homeBrief: _briefList[index],
              );
            },
          ),
        ),
      ),
    );
  }
}

class HomeBriefBox extends StatelessWidget {
  const HomeBriefBox({
    super.key,
    required this.isLast,
    required this.isCurrent,
    required this.homeBrief,
  });

  final bool isLast;
  final bool isCurrent;
  final HomeBrief homeBrief;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isLast
          ? const EdgeInsets.only(left: SizesManager.m20)
          : const EdgeInsets.symmetric(horizontal: SizesManager.m20),
      width: 180,
      decoration: BoxDecoration(
        color: isCurrent ? ColorsManager.secondary : ColorsManager.grey,
        borderRadius: BorderRadius.circular(
          SizesManager.r20,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: SizesManager.p20,
        vertical: SizesManager.p32,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '${homeBrief.number} ',
                  style: TextStylesManager.H2_Bold_26px,
                ),
                TextSpan(
                  text: homeBrief.unit,
                  style: TextStylesManager.H2_Regular_26px,
                ),
              ],
            ),
          ),
          Text(
            homeBrief.description,
            style: TextStylesManager.Body2_Regular_14px,
          ),
        ],
      ),
    );
  }
}
