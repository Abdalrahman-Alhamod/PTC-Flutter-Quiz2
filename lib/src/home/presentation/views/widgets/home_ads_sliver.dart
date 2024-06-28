import 'dart:async';
import 'package:flutter/material.dart';
import '../../../../../core/utils/imports_manager.dart';

class HomeAdsSliver extends StatefulWidget {
  const HomeAdsSliver({
    super.key,
  });

  @override
  State<HomeAdsSliver> createState() => _HomeAdsSliverState();
}

class _HomeAdsSliverState extends State<HomeAdsSliver> {
  late final ScrollController _scrollController;
  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    _startAutoScroll();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _onScroll() {
    final int index = (_scrollController.offset / 270).round();
    setState(() {
      _currentIndex = index;
    });
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_scrollController.hasClients) {
        double newOffset = _scrollController.offset + 270;
        if (newOffset > _scrollController.position.maxScrollExtent * 1.5) {
          newOffset = 0;
        }
        _scrollController.animateTo(
          newOffset,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      }
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
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final bool isCurrent = index == _currentIndex;
              return Container(
                margin: index != 2
                    ? const EdgeInsets.only(left: SizesManager.m20)
                    : const EdgeInsets.symmetric(horizontal: SizesManager.m20),
                width: 270,
                decoration: BoxDecoration(
                  color:
                      isCurrent ? ColorsManager.secondary : ColorsManager.grey,
                  borderRadius: BorderRadius.circular(
                    SizesManager.r20,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: SizesManager.m20,
                        vertical: SizesManager.m26,
                      ),
                      child: Image.asset(
                        ImagesManager.image,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringsManager.get,
                          style: TextStylesManager.H3_Regular_20px.copyWith(
                            color: ColorsManager.white,
                            fontWeight: FontWeightManager.light,
                          ),
                        ),
                        Text(
                          '50% ${StringsManager.off}',
                          style: TextStylesManager.H2_Bold_26px.copyWith(
                            color: ColorsManager.white,
                          ),
                        ),
                        Text(
                          StringsManager.onFirstOrder,
                          style: TextStylesManager.Label_Regular_12px.copyWith(
                            color: ColorsManager.white,
                            fontWeight: FontWeightManager.light,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
