import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                //first name
                child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user),
                    )),
              ),

              const SizedBox(width: TSizes.spaceBtwInputFields2),

              //last name
              Expanded(
                child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user),
                    )),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields3),

          //username
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit),
              )),

          const SizedBox(height: TSizes.spaceBtwInputFields3),

          //email
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct),
              )),

          const SizedBox(height: TSizes.spaceBtwInputFields3),

          //phone No
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.phoneNo,
                prefixIcon: Icon(Iconsax.call),
              )),

          const SizedBox(height: TSizes.spaceBtwInputFields3),

          //password
          TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.eye_slash),
                suffixIcon: Icon(Iconsax.eye_slash),
              )),
          const SizedBox(height: TSizes.spaceBtwSections),

          ///Terms & conditions checkbox
          const TTermsAndConditionCheckbox(),
          const SizedBox(height: TSizes.spaceBtwSections),

          ///Sign Up Button

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()), 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue[900]!),
                  ),
                
                child: const Text(TTexts.createAccount)),
                
          )
        ],
      ),
    );
  }
}

