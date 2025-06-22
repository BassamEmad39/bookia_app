import 'package:bookie_app/components/buttons/main_back_button.dart';
import 'package:bookie_app/components/buttons/main_button.dart';
import 'package:bookie_app/components/inputs/name_text_form_field.dart';
import 'package:bookie_app/core/constants/app_assets.dart';
import 'package:bookie_app/core/extensions/navigations.dart';
import 'package:bookie_app/core/routers/routers.dart';
import 'package:bookie_app/core/utils/text_styles.dart';
import 'package:bookie_app/features/auth/presentation/widgets/social_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, title: MainBackButton()),
      bottomNavigationBar: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?'),
            TextButton(
              onPressed: () {
                context.pushWithReplacement(Routes.register);
              },
              child: Text('Register Now'),
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
              Text(
                'Welcome back! Glad to see you, Again!',
                style: TextStyles.getHeadLine1(),
              ),
              Gap(30),
              NameTextFormField(hintText: 'Enter your email'),
              Gap(15),
              NameTextFormField(
                hintText: 'Enter your password',
                suffixIcon: Center(
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(AppAssets.eyeSvg),
                  ),
                ),
              ),
              Gap(10),
              TextButton(
                onPressed: () {
                  context.pushWithReplacement(Routes.forgotPassword);
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.getBody(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Gap(30),
              MainButton(text: 'Login', onPressed: () {}),
              Gap(15),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Gap(10),
                  Text('Or Login With'),
                  Gap(10),
                  Expanded(child: Divider()),
                ],
              ),
              Gap(20),
              SocialLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
