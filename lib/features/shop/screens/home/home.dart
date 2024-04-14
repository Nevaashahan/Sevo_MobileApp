import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce/common/widgets/texts/section_header.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //searchbar

                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  //categories

                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///Heading
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: TSizes.spaceBtwItems),

                        ///Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

