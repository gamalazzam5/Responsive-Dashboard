import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
            image: Assets.imagesAvatar3,
          ),
        ],
      ),
    );
  }
}
