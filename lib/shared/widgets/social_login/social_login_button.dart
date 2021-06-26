import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;

  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(
              color: AppColors.stroke,
            ))),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(AppImages.google),
            ),
            Expanded(
              flex: 3,
              child: Text(
                'Entrar com o Google',
                style: TextStyles.buttonGray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
