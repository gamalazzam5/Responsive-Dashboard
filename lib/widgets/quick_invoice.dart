
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_section.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(child:
Column(
  children: const [
    QuickInvoiceHeader(),
    SizedBox(height: 24,),
    LatestTransactionSection()
  ],
)
    );
  }
}


