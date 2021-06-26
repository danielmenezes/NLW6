import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class BoletoInfoWidget extends StatelessWidget {
  final int size;
  const BoletoInfoWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              AppImages.logomini,
              color: AppColors.background,
            ),
            Container(
              width: 1,
              height: 32,
              color: AppColors.background,
            ),
            Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Você tem ',
                    style: TextStyles.captionBackground,
                    children: [
                      TextSpan(
                        text: '$size boletos\n',
                        style: TextStyles.captionBoldBackground,
                      ),
                      TextSpan(
                        text: 'Cadastrados para pagar',
                        style: TextStyles.captionBackground,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
