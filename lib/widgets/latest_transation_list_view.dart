import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

import '../utils/app_images.dart';

class LatestTransationListView extends StatelessWidget {
  const LatestTransationListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      title: 'Josua Nunito',
      subTitle: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar3,
    ),

    UserInfoModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),  UserInfoModel(
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          items.length,
          (index) => IntrinsicWidth(
            child: UserInfoListTile(userInfoModel: items[index]),
          ),
        ),
      ),
    );
  }
}
