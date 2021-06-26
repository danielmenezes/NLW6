import 'package:flutter/material.dart';

import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_buttons/set_buttons_widgets.dart';

class BottomSheetWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String label1;
  final VoidCallback fn1;
  final String label2;
  final VoidCallback fn2;

  const BottomSheetWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.label1,
    required this.fn1,
    required this.label2,
    required this.fn2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 40),
                      child: Text.rich(
                        TextSpan(
                          text: title,
                          children: [
                            TextSpan(
                                text: '\n$subTitle',
                                style: TextStyles.buttonHeading),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Divider(
                      color: AppColors.stroke,
                      height: 1,
                    ),
                    Container(
                      height: 56,
                      child: SetButtonsWidget(
                        label1: label1,
                        fn1: fn1,
                        enablePrimaryColor: true,
                        label2: label2,
                        fn2: fn2,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
