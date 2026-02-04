import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_item.dart';

import '../models/transaction_histroy_model.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionHistoryModel> transactionItem = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdraw: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022',
      amount: r'$2,000',
      isWithdraw: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App Project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithdraw: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(transactionItem.length, (index)=> TransactionItem(transactionHistoryModel: transactionItem[index],) ),
    );
  }
}
