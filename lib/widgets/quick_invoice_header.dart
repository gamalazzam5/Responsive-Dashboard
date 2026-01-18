import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: const Color(0xFFFAFAFA),
          ),
          child: Icon(Icons.add, color: const Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}
