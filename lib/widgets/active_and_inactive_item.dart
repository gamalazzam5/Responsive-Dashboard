import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(item.title, style: AppStyles.styleMedium16(context))),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.item});

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(item.title, style: AppStyles.styleBold16(context))),
      trailing: Container(width: 3.27, color: const Color(0xFF4EB7F2)),
    );
  }
}
