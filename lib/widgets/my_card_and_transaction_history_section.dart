import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

import 'my_card.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children:const [
           MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
