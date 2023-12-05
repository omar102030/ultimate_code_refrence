import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ultimate_code_refrence/core/helpers/extensions.dart';
import 'package:ultimate_code_refrence/core/theming/styles.dart';
import 'package:ultimate_code_refrence/features/on_boarding/widgets/doc_logo_and_name.dart';
import 'package:ultimate_code_refrence/features/on_boarding/widgets/doctor_logo_image.dart';
import 'package:ultimate_code_refrence/features/on_boarding/widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            30.ph,
            const DoctorLogoImage(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font13GreyRegular,
                  ),
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: TextStyles.font13GreyRegular,
                  ),
                  30.ph,
                  const GetStartedButton()
                ],
              ),
            )
          ],
        ),
      ))),
    );
  }
}
