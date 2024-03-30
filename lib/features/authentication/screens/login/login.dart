import 'package:ecommerce/common/widgets.login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets.login_signup/social_buttons.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_funtions.dart';
import '../login/widgets/login_header.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo, Title & Sub-Title
              TLoginHeader(dark: dark),
            
              /// Form
              const TLoginForm(),

              // Divider
              TFormDivider(dividerText: TTexts.orSignInwith.capitalize!),
              

              const SizedBox(height: TSizes.spaceBtwItems),

              // Footer

               const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

