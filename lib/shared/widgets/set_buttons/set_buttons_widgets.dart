import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'package:payflow/shared/widgets/label_button.dart/label_button.dart';

class SetButtonsWidget extends StatelessWidget {
  final String label1;
  final VoidCallback fn1;
  final String label2;
  final VoidCallback fn2;
  final bool enablePrimaryColor;
  final bool enableSecondaryColor;

  const SetButtonsWidget({
    Key? key,
    required this.label1,
    required this.fn1,
    required this.label2,
    required this.fn2,
    this.enablePrimaryColor = false,
    this.enableSecondaryColor = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: label1,
              onPressed: fn1,
              enablePrimaryColor: enablePrimaryColor,
            ),
          ),
          VerticalDivider(
            color: AppColors.stroke,
            width: 1,
          ),
          Expanded(
            child: LabelButton(
              label: label2,
              onPressed: fn2,
              enablePrimaryColor: enableSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
