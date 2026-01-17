import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: const Color(0xFFFAFAFA),
          ),
          child: SvgPicture.asset(image),
        ),Icon(Icons.arrow_forward_ios)
        
      ],
    );
  }
}
