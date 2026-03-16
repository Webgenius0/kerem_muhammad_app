import 'package:flutter/material.dart';
import 'package:kerem_muhammad_app/assets_helper/app_icons.dart';
import 'package:kerem_muhammad_app/common_widgets/custom_appbar.dart';
import 'package:kerem_muhammad_app/constants/app_list.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_leaderboard_rank_card.dart';
import 'package:kerem_muhammad_app/features/home/presentation/widget/custom_top_three_leaderboard_widget.dart';
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            UIHelper.verticalspace20,
            CustomTopThreeLeaderboardWidget(
              rankOneImageUrl:
                  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              rankThreeImageUrl:
                  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              rankTwoImageUrl:
                  "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D",
              rank1Number: '1',
              rank1Name: 'Eiden',
              rank1Score: '2430',
              rank1Username: '@username',
              rank2Number: '2',
              rank2Name: 'Eiden',
              rank2Score: '2430',
              rank2Username: '@username',
              rank3Number: '3',
              rank3Name: 'Eiden',
              rank3Score: '2430',
              rank3Username: '@username',
            ),
            UIHelper.verticalspace24,
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: AppList().leaderboardrankuserlist.length,
              itemBuilder: (context, index) {
                var item = AppList().leaderboardrankuserlist[index];
                return CustomLeaderboardRankCard(
                  imageurl:
                      "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8VXNlcnxlbnwwfHwwfHx8MA%3D%3D",

                  icon: item['icon'],
                  name: item['name'],
                  score: item['points'],
                  userName: item['username'],
                );
              },
            ),
            UIHelper.verticalspace32,
          ],
        ),
      ),
    );
  }
}
