import 'package:flutter/material.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/helpers/navigation_service.dart';
import 'package:kerem_muhammad_app/helpers/ui_helpers.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Leaderboard',
        onTap: () {
          NavigationService.goBack;
        },
        svgimg: AppIcons.arrowleft,
      ),
      body: Column(
        children: [
          UIHelper.verticalspace20,
          // CustomTopThreeLeaderboardWidget(
          //   rankOneImageUrl:
          //       "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D",
          //   rankThreeImageUrl:
          //       "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D",
          //   rankTwoImageUrl:
          //       "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D",
          //   rand1: '1',
          //   rank2: '2',
          //   rank3: '3',
          // ),
        ],
      ),
    );
  }
}
