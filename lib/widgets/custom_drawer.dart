import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/widgets/active_and_inactive_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';
import '../models/drawer_item_model.dart';
import '../utils/app_images.dart';
import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
                image: Assets.imagesAvatar3,
              ),
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 8)),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),

                InActiveDrawerItem(
                  item: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawerItem(
                  item: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
