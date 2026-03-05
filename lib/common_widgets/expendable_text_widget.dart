import 'package:flutter/material.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  final int trimLines;

  const ExpandableTextWidget({
    super.key,
    required this.text,
    this.trimLines = 3,
  });

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          maxLines: isExpanded ? null : widget.trimLines,
          overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
          style: TextFontStyle.txtfontstyle26w600cFFFFF,
        ),
        GestureDetector(
          onTap: () {
            setState(() => isExpanded = !isExpanded);
          },
          child: Text(
            isExpanded ? 'Read less' : 'Read more',
            style: TextFontStyle.txtfontstyle26w600cFFFFF.copyWith(
              decoration: TextDecoration.underline,
              color: AppColors.primarycolor,
            ),
          ),
        ),
      ],
    );
  }
}
