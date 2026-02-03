import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

import 'all_expenses_and_quick_invoice_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: const CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: AllExpensesAndQuickInvoiceSection()),
        const SizedBox(width: 24,),
        Expanded(child: MyCardAndTransactionHistorySection())
        
      ],
    );
  }
}


