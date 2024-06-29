import 'package:flutter/material.dart';

import '../../../../../core/utils/imports_manager.dart';

class IntroductoryWidget extends StatefulWidget {
  final String title;
  final String text;

  const IntroductoryWidget({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  State<IntroductoryWidget> createState() => _IntroductoryWidgetState();
}

class _IntroductoryWidgetState extends State<IntroductoryWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: Column(
        children: [
          Row(
            children: [
              Text(
                widget.title,
                style: TextStylesManager.Body1_Regular_16px,
              ),
              const Spacer(),
              Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
                color: _isExpanded ? Colors.black : ColorsManager.primary,
                size: SizesManager.s24,
              ),
            ],
          ),
          if (_isExpanded)
            const Divider(
              color: ColorsManager.greyDark,
              height: 20,
            ),
          if (_isExpanded)
            Text.rich(
              TextSpan(
                text: widget.text,
                style: TextStylesManager.Body2_Regular_14px.copyWith(
                  color: ColorsManager.blueGreyLight,
                  height: 1.3,
                  wordSpacing: 1.5,
                ),
              ),
              textAlign: TextAlign.justify,
            ),
        ],
      ),
    );
  }
}
