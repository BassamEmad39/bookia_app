import 'package:bookie_app/components/buttons/main_back_button.dart';
import 'package:bookie_app/components/buttons/main_button.dart';
import 'package:bookie_app/core/routers/routers.dart';
import 'package:bookie_app/core/utils/app_colors.dart';
import 'package:bookie_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: MainBackButton()),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Didn\'t receive code?'),
            TextButton(onPressed: () {}, child: Text('Resend')),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('OTP Verification', style: TextStyles.getHeadLine1()),
              Gap(10),
              Text(
                "Enter the verification code we just sent on your email address.",
                style: TextStyles.getBody(color: AppColors.greyColor),
              ),
              Gap(30),
              Center(
                child: Pinput(
                  defaultPinTheme: PinTheme(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    width: 70,
                    height: 60,
                    textStyle: TextStyles.getTitle(color: AppColors.darkColor),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                  controller: pinController,
                  length: 4,
                  onCompleted: (pin) {},
                ),
              ),
              Gap(38),
              MainButton(
                text: 'Verify',
                onPressed: () {
                  context.push(Routes.createNewPassword);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
