import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_funtions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          alignment: Alignment.center,
          icon: const Icon(Iconsax.arrow_left4),
          iconSize: 32,
          onPressed: () => Get.to(() => const LoginScreen()),
          color: dark ? Colors.white : Colors.black,
        ),
      ),
        body: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///Headings
                Text(TTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(TTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
                const SizedBox(height: TSizes.spaceBtwSections * 2),

                ///Text field
                TextFormField(
                  decoration: const InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                

                ///Submit Button
                SizedBox(
                  width: double.infinity, 
                  child: ElevatedButton(onPressed: () => Get.off(() => const ResetPassword()),
                  style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue[900]!), // Change the color here
                ),
                   child: const Text(TTexts.submit)),)
              ],
            ),
            ),
            ),
      );
        
  }
}
