 import 'package:flutter/material.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_colour.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_font_size.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_font_weight.dart';
import 'package:questionandanswer_game_app/core/utilities/constants/app_spacing.dart';



 class ReusableAnswerRow extends StatelessWidget {
   const ReusableAnswerRow({
     super.key, required this.answer, required this.onTap,
   });
   final String answer;
   final Function() onTap;

   @override
   Widget build(BuildContext context) {
     return GestureDetector(
       onTap: onTap ,
       child: Container(
         padding: EdgeInsets.symmetric(vertical: AppSpacing.h5,horizontal: AppSpacing.h10),
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(AppSpacing.h20),
           color: AppColour.darkBlue,
         ),
         child:  Center(
           child: Text(answer,
             style: const TextStyle(
                 fontSize: AppFontSize.h14,
                 fontWeight: AppFontWeight.w400,
                 color: AppColour.white
             ),
           ),
         ),
       ),
     );
   }
 }