import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/utils/asset_path.dart';
class ScreenBG extends StatelessWidget {
  final Widget child;
  const ScreenBG({
    super.key, required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Opacity(
          opacity: .1,
           child: SvgPicture.asset(
            width:double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
            AssetPath.bgSvg),

         ),
         child
      ],
    );
  }
}