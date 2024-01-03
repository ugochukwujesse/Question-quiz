import 'package:flutter/material.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_colour.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_font_size.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_font_weight.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_spacing.dart';


class ReusableTopRow extends StatelessWidget {
  const ReusableTopRow({
    super.key, required this.icons, required this.text
  });
  final Icon icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: AppSpacing.h5, bottom: AppSpacing.h5,left: AppSpacing.h10,right: AppSpacing.h10,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.h20),
        color: AppColour.backgroundBlue,
      ),
      child:  Row(
        children: [
          icons,
          SizedBox(width: AppSpacing.h5,),
          Text( text,
            style: TextStyle(
              fontWeight: AppFontWeight.w500,
              fontSize: AppFontSize.h14,
              color: AppColour.white,
            ),
          )
        ],
      ),
    );
  }
}

