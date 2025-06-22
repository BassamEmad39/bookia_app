import 'package:bookie_app/components/buttons/main_back_button.dart';
import 'package:bookie_app/components/buttons/main_button.dart';
import 'package:bookie_app/components/inputs/name_text_form_field.dart';
import 'package:bookie_app/core/extensions/navigations.dart';
import 'package:bookie_app/core/routers/routers.dart';
import 'package:bookie_app/core/utils/app_colors.dart';
import 'package:bookie_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: MainBackButton()),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create new password', style: TextStyles.getHeadLine1()),
              Gap(10),
              Text(
                "Your new password must be unique from those previously used.",
                style: TextStyles.getBody(color: AppColors.greyColor),
              ),
              Gap(30),
              NameTextFormField(hintText: 'New Password'),
              Gap(15),
              NameTextFormField(hintText: 'Confirm Password'),
              Gap(38),
              MainButton(text: 'Reset Password', onPressed: () {
                context.pushWithReplacement(Routes.success);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
