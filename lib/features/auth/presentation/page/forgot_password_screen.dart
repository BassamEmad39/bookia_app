import 'package:bookie_app/components/buttons/main_back_button.dart';
import 'package:bookie_app/components/buttons/main_button.dart';
import 'package:bookie_app/components/inputs/name_text_form_field.dart';
import 'package:bookie_app/core/extensions/navigations.dart';
import 'package:bookie_app/core/routers/routers.dart';
import 'package:bookie_app/core/utils/app_colors.dart';
import 'package:bookie_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: MainBackButton()),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Remember Password?'),
            TextButton(
              onPressed: () {
                context.pushWithReplacement(Routes.login);
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Forgot Password?', style: TextStyles.getHeadLine1()),
              Gap(10),
              Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: TextStyles.getBody(color: AppColors.greyColor),
              ),
              Gap(30),
              NameTextFormField(hintText: 'Enter your email'),
              Gap(38),
              MainButton(
                text: 'Send Code',
                onPressed: () {
                  context.push(Routes.otp);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
