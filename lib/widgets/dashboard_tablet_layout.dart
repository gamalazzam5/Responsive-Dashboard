import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'income_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensesAndQuickInvoiceSection(),
                  SizedBox(height: 24,),
                  MyCardAndTransactionHistorySection(),
                  SizedBox(height: 24,),
                  IncomeSection()
                  ],
              ),
            )),

      ],
    );
  }
}
