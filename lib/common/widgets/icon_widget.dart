import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ticket/utils/app_utils/app-utils.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    super.key,
    required this.context,
    required this.data,
    this.width = 12,
    this.height = 12,
    this.color,
    this.onClick,
  });
  final BuildContext context;
  final String data;
  final double width;
  final double height;
  final Color? color;
  final Function? onClick;
  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {

  @override
  Widget build(BuildContext context) {
    return widget.onClick != null
        ? InkWell(
      onTap: () {
        widget.onClick!();
      },
      child: _iconWidget(),
    )
        : _iconWidget();
  }
  _iconWidget() {
    return Container(
      width:12,
      // isPhoneScreen(context) ? AppSizes.getPhoneSize(24) : AppSizes.getWebSize(24),
      height:12,
      // isPhoneScreen(context) ? AppSizes.getPhoneSize(24) : AppSizes.getWebSize(24),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        fetchIconFromAsset(widget.data),
        // width: isPhoneScreen(context)
        //     ? AppSizes.getPhoneSize(widget.width)
        //     : AppSizes.getWebSize(widget.width),
        // height: isPhoneScreen(context)
        //     ? AppSizes.getPhoneSize(widget.height)
        //     : AppSizes.getWebSize(widget.height),
        color: widget.color ?? Theme.of(context).primaryColor,
      ),
    );
  }
}
