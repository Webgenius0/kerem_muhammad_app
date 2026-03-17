import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kerem_muhammad_app/assets_helper/app_colors.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_text_field.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_ai_chat_widget.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_text_field_chat.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_user_chat_widget.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:intl/intl.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart'; // Add intl to your pubspec.yaml for real time

class AiChatScreen extends StatefulWidget {
  const AiChatScreen({super.key});

  @override
  State<AiChatScreen> createState() => _AiChatScreenState();
}

class _AiChatScreenState extends State<AiChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  // Initializing with one message
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
      // 1. Add user message to the list
      _messages.add({"text": userText, "isAi": false, "time": currentTime});
    });

    _messageController.clear();
    _scrollToBottom();

    // 2. Simulate AI "Thinking" delay
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
    // In a reversed list, 0.0 is the bottom (latest message)
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
          // ==============================
          // 1. CHAT MESSAGES LIST
          // ==============================
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              reverse: true, // Key for WhatsApp-style behavior
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
              itemCount: _messages.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                // Since reverse is true, index 0 is the bottom of the screen.
                // We access the list from the end (most recent) to the beginning.
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
                          messageContainerColor:
                              AppColors.cDBEAFE, // Light Blue
                          borderColor: AppColors.c1A1A7E10percent,
                          messageTextColor: AppColors.c161C24,
                        ),
                );
              },
            ),
          ),

          // ==============================
          // 2. BOTTOM INPUT FIELD
          // ==============================
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
          // Container(
          //   padding: EdgeInsets.only(
          //     left: 16.w,
          //     right: 16.w,
          //     top: 12.h,
          //     bottom: MediaQuery.of(context).padding.bottom + 12.h,
          //   ),
          //   decoration: BoxDecoration(
          //     color: Colors.white,
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.black.withOpacity(0.05),
          //         offset: const Offset(0, -4),
          //         blurRadius: 10,
          //       ),
          //     ],
          //   ),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Container(
          //           decoration: BoxDecoration(
          //             color: const Color(0xFFF9FAFB),
          //             borderRadius: BorderRadius.circular(24.r),
          //             border: Border.all(color: const Color(0xFFE5E7EB)),
          //           ),
          //           child: TextField(
          //             controller: _messageController,
          //             style: TextStyle(fontSize: 14.sp),
          //             decoration: InputDecoration(
          //               hintText: "Type a message...",
          //               hintStyle: TextStyle(
          //                 color: Colors.grey,
          //                 fontSize: 14.sp,
          //               ),
          //               border: InputBorder.none,
          //               contentPadding: EdgeInsets.symmetric(
          //                 horizontal: 20.w,
          //                 vertical: 12.h,
          //               ),
          //             ),
          //             onSubmitted: (_) => _sendMessage(), // Send on "Enter" key
          //           ),
          //         ),
          //       ),
          //       UIHelper.horizontalSpace(12.w),
          //       GestureDetector(
          //         onTap: _sendMessage,
          //         child: Container(
          //           padding: EdgeInsets.all(12.w),
          //           decoration: const BoxDecoration(
          //             shape: BoxShape.circle,
          //             color: Color(0xFF0066FF),
          //           ),
          //           child: Icon(
          //             Icons.send_rounded,
          //             color: Colors.white,
          //             size: 20.sp,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
