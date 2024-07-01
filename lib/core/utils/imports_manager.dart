import 'package:credit_card_validator/credit_card_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:ptc_quiz2/core/utils/card_exp_date_input_formatter.dart';
import 'package:ptc_quiz2/src/addCard/presentation/views/add_card_view.dart';
import 'package:ptc_quiz2/src/checkout/domain/entities/delivery_address.dart';
import 'package:ptc_quiz2/src/checkout/presentation/views/checkout_view.dart';
import 'package:ptc_quiz2/src/home/domain/entities/home_brief.dart';
import 'package:ptc_quiz2/src/onboarding/presentation/views/onboarding_view.dart';
import '../../src/categories/domain/entities/category.dart';
import '../../src/home/domain/entities/ads.dart';
import '../../src/home/domain/entities/product.dart';
import '../../src/productDetails/presentation/views/product_details_view.dart';
import '../../src/products/presentation/views/products_view.dart';
import '../../src/shoppingCart/presentation/views/shopping_cart_view.dart';
import '../helpers/convert_to_material_color.dart';
import '../../src/home/presentation/views/bottom_nav_bar_view.dart';
import 'card_number_input_formatter.dart';
part '../assets/fonts_manager.dart';
part '../assets/images_manager.dart';
part '../assets/svgs_manager.dart';
part '../colors/colors_manager.dart';
part '../constants/sizes_manager.dart';
part '../constants/strings_manager.dart';
part '../routes/routes_manager.dart';
part '../styles/font_sizes_manager.dart';
part '../styles/font_weight_manager.dart';
part '../styles/text_styles_manager.dart';
part '../theme/theme_manager.dart';
part '../data/fake_data_manager.dart';
part 'input_formatters_manager.dart';
part './validators_manager.dart';