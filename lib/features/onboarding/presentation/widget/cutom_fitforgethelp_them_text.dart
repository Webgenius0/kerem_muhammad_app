import 'package:flutter/material.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class CutomFitforgethelpThemText extends StatelessWidget {
  const CutomFitforgethelpThemText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            text: 'How ',
            style: TextFontStyle.txtfontstyle18w700c212121,
            children: <TextSpan>[
              TextSpan(
                text: 'FitForge ',
                style: TextFontStyle.txtfontstyle18w700primaryColor,
              ),

              TextSpan(
                text: 'Helped Them?',
                style: TextFontStyle.txtfontstyle18w700c212121,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
