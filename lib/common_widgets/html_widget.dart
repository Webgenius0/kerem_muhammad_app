import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:kerem_muhammad_app/constants/text_font_style.dart';

class HtmlViewWidget extends StatelessWidget {
  final String input;
  final int? maxLines;
  final TextOverflow? overflow;

  const HtmlViewWidget({
    super.key,
    required this.input,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return HtmlWidget(
      input,
      renderMode: RenderMode.column,
      textStyle: TextFontStyle.txtfontstyle26w600cFFFFF,
      customWidgetBuilder: (element) {
        if (element.localName == 'p') {
          return Text(
            element.text,
            maxLines: maxLines,
            overflow: overflow,
            style: TextFontStyle.txtfontstyle26w600cFFFFF,
          );
        }
        return null;
      },
    );
  }
}
