import 'package:flutter/material.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';

class AiChatScreen extends StatelessWidget {
  const AiChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        onTap: () {
          NavigationService.goBack;
        },
        title: 'AI Chat',
        svgimg: AppIcons.arrowleft,
        rightSvgIcon: AppIcons.aichat,
      ),
    );
  }
}
