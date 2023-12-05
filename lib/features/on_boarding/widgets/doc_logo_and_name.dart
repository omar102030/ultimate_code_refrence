import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_code_refrence/core/helpers/extensions.dart';
import 'package:ultimate_code_refrence/core/theming/styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/logo.svg'),
        10.pw,
        Text(
          'Docdoc',
          style: TextStyles.font24Black700weight,
        )
      ],
    );
  }
}
