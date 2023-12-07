import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ultimate_code_refrence/core/helpers/extensions.dart';
import 'package:ultimate_code_refrence/core/theming/styles.dart';
import 'package:ultimate_code_refrence/core/widgets/app_text_button.dart';
import 'package:ultimate_code_refrence/core/widgets/app_text_form_field.dart';
import 'package:ultimate_code_refrence/features/login/ui/widgets/already_have_account_text.dart';
import 'package:ultimate_code_refrence/features/login/ui/widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            8.ph,
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GrayRegular,
            ),
            36.ph,
            Form(
                key: formKey,
                child: Column(
                  children: [
                    AppTextFormField(hintText: 'Email', validator: (value) {}),
                    18.ph,
                    AppTextFormField(
                      hintText: 'Password',
                      validator: (value) {},
                      isObscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(isObscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    24.ph,
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        )),
                    40.ph,
                    AppTextButton(
                        buttonText: 'Login',
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {}),
                    16.ph,
                    const TermsAndConditionsText(),
                    60.ph,
                    const AlreadyHaveAccountText()
                  ],
                ))
          ],
        ),
      )),
    ));
  }
}
