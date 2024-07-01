import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';
import 'home_brief_box.dart';

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
  @override
  void initState() {
    super.initState();

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
    final int index = (_scrollController.offset / 20).round();
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
            itemCount: FakeDataManager.homeBriefs.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final bool isCurrent = index == _currentIndex;
              final bool isLast =
                  index == FakeDataManager.homeBriefs.length - 1;
              return HomeBriefBox(
                isLast: isLast,
                isCurrent: isCurrent,
                homeBrief: FakeDataManager.homeBriefs[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
