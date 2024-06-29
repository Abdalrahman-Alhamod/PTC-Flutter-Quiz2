import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/utils/imports_manager.dart';

class ReviewsBar extends StatelessWidget {
  const ReviewsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          itemSize: SizesManager.s16,
          initialRating: 4.5,
          ignoreGestures: true,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {},
        ),
        const SizedBox(
          width: SizesManager.s8,
        ),
        Text(
          '110 ${StringsManager.reviews}',
          style: TextStylesManager.Body2_Regular_14px.copyWith(
            color: ColorsManager.greyDark,
          ),
        )
      ],
    );
  }
}
