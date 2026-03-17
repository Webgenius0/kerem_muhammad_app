import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_ai_chat_widget.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_text_field_chat.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_user_chat_widget.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:intl/intl.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class AiChatScreen extends StatefulWidget {
  const AiChatScreen({super.key});

  @override
  State<AiChatScreen> createState() => _AiChatScreenState();
}

class _AiChatScreenState extends State<AiChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<Map<String, dynamic>> _messages = [
    {
      "text":
          "Hi Alex! I'm your AI fitness coach. How can I help you today? 💪",
      "isAi": true,
      "time": "4:02 PM",
    },
  ];

  void _sendMessage() async {
    if (_messageController.text.trim().isEmpty) return;

    final userText = _messageController.text.trim();
    final currentTime = DateFormat('h:mm a').format(DateTime.now());

    setState(() {
      _messages.add({"text": userText, "isAi": false, "time": currentTime});
    });

    _messageController.clear();
    _scrollToBottom();

    await Future.delayed(const Duration(milliseconds: 800));

    setState(() {
      _messages.add({
        "text":
            "That's a great goal! Let me generate a personalized plan for you.",
        "isAi": true,
        "time": DateFormat('h:mm a').format(DateTime.now()),
      });
    });

    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          0.0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              itemCount: _messages.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                final reversedList = _messages.reversed.toList();
                final messageData = reversedList[index];

                return Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: messageData["isAi"]
                      ? CustomAIChatWidget(
                          message: messageData["text"],
                          messageTime: messageData["time"],
                          messageContainerColor: AppColors.cFFFFFF,
                          borderColor: Colors.transparent,
                          messageTextColor: AppColors.c161C24,
                        )
                      : CustomUserChatWidget(
                          message: messageData["text"],
                          messageTime: messageData["time"],
                          messageContainerColor: AppColors.cDBEAFE,
                          borderColor: AppColors.c1A1A7E10percent,
                          messageTextColor: AppColors.c161C24,
                        ),
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomTextFieldChat(
              controller: _messageController,
              hintText: 'Type a message',
              fillColor: AppColors.cFFFFFF,
              borderColor: AppColors.cC4CDD5,
              inputAction: TextInputAction.done,
              suffixIcon: AppIcons.send,
              onTap: _sendMessage,
              borderRadius: 8.r,
            ),
          ),

          UIHelper.verticalspace32,
        ],
      ),
    );
  }
}
