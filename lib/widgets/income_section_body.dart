import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';

import 'income_chart.dart';
import 'income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.sizeOf(context).width;

    return width>= SizeConfig.desktop&& width<1750 ?  Expanded(child: DetailedIncomeChart()) :Row(
      crossAxisAlignment: .center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(child: IncomeDetails(),)
      ],
    );
  }
}
