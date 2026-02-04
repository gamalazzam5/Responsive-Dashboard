import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackgroundColor,
    this.imageColor,
    this.iconColor,
  });

  final Color? imageBackgroundColor, imageColor, iconColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 60
            ),
            child: AspectRatio(
             aspectRatio: 1,
              child: Container(

                decoration: ShapeDecoration(
                  shape: OvalBorder(),
                  color: imageBackgroundColor ?? const Color(0xFFFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xFF4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: iconColor ?? const Color(0xFF064061),
        ),
      ],
    );
  }
}
