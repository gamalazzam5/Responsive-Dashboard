import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const [
        SliverToBoxAdapter(child: AllExpenses()),

        SliverPadding(padding: EdgeInsets.only(top: 24)),

        SliverFillRemaining(hasScrollBody: false, child: QuickInvoice()),
      ],
    );
  }
}
