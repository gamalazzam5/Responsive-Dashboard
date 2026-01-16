import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.item, required this.isActive});

  final DrawerItemModel item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(item: item)
        : InActiveDrawerItem(item: item);
  }
}
