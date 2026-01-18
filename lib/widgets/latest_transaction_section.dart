import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'latest_transation_list_view.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text('Latest Transaction',style: AppStyles.styleMedium16(context),),
        const SizedBox(height: 12,),
        const LatestTransationListView(),
      ],
    );
  }
}
