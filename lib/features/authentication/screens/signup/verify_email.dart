import 'package:ecommerce/common/widgets/success_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_funtions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: IconButton(
                icon: const Icon(CupertinoIcons.clear),
                onPressed: () => Get.offAll(() => const LoginScreen()),
                iconSize: 32,
                color: dark ? Colors.white : Colors.black,
              ),
            ),
          ],

        ),
        body: SingleChildScrollView(
          // Padding to Give Default Equal Space on all sides in all screens.
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Image
                Image(image: const AssetImage(TImages.emailverification), width: THelperFunctions.screenWidth() * 0.6,),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Title & SubTitle
                Text(TTexts.confirmMail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text('sevosmarttech@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Buttons
                
                SizedBox(width: double.infinity,
                 child:ElevatedButton(
                  onPressed: () => Get.to(() =>  SuccessScreen(
                    image: TImages.deliverMail,
                    title: TTexts.accountcreatedSuccessfully,
                    subTitle: TTexts.accountcreatedSuccessfullySubtitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                    ),),
                       style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(
                       Colors.blue[900]!), // Change the color here
                ),
                 child: const Text(TTexts.tContinue))),
                const SizedBox(height: TSizes.spaceBtwItems),
                SizedBox(width: double.infinity, child:TextButton(onPressed: (){},
                  
                 child: const Text(TTexts.resendEmail))),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
