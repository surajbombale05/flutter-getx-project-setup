// import 'package:flutter/material.dart';

// import '../../../consts/app_colors.dart';
// import '../../../consts/app_enums.dart';
// import '../../../consts/app_sizes.dart';
// import '../icon_widget.dart';
// import '../sized_box_widget.dart';
// import '../text_widget.dart';


// // ignore: must_be_immutable
// class CustomDropDownWidget2 extends StatelessWidget {
//   CustomDropDownWidget2(
//       {super.key,
//       required this.onItemSelected,
//       required this.options,
//       required this.selectedItem,
//       this.label,
//       this.placeholder = 'select',
//       this.isMandatory = false,
//       this.labelTextColor,
//       this.labelFontSize = 0.0,
//       this.labelFontWeight,
//       this.containerHeight = 0.0,
//       this.containerWidth = 0.0,
//       this.hintHorizontalPadding = 0.0,
//       this.hintColor,
//       this.hintFontSize,
//       this.hintFontWeight});

//   void Function(String) onItemSelected;
//   List<String> options;
//   String selectedItem;
//   String? label;
//   double labelFontSize;
//   FontWeight? labelFontWeight;
//   Color? labelTextColor;
//   bool isMandatory;
//   String placeholder;
//   double containerHeight;
//   double containerWidth;
//   double hintHorizontalPadding;
//   Color? hintColor;
//   double? hintFontSize;
//   FontWeight? hintFontWeight;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TextWidget(
//           context: context,
//           data: label ?? "",
//           fontSize: labelFontSize,
//           fontWeight: labelFontWeight ?? FontWeight.w500,
//           color: labelTextColor ?? AppColors.primaryColorDark,
//           isMandatory: isMandatory,
//         ),
//         SizedBoxWidget(
//           height: 8,
//         ),
//         DropDownInside(
//           placeholder: placeholder,
//           onItemSelected: onItemSelected,
//           options: options,
//           selectedItem: selectedItem,
//           containerHeight: containerHeight,
//           containerWidth: containerWidth,
//           hintHorizontalPadding: hintHorizontalPadding,
//           hintColor: hintColor,
//           hintFontSize: hintFontSize,
//           hintFontWeight: hintFontWeight,
//         ),
//       ],
//     );
//   }
// }

// // ignore: must_be_immutable
// class DropDownInside extends StatefulWidget {
//   final List<String> options;
//   final String selectedItem;
//   final ValueChanged<String> onItemSelected;
//   String placeholder;
//   double containerHeight;
//   double containerWidth;
//   double hintHorizontalPadding;
//   Color? hintColor;
//   double? hintFontSize;
//   FontWeight? hintFontWeight;

//   DropDownInside(
//       {Key? key,
//       required this.options,
//       required this.selectedItem,
//       required this.onItemSelected,
//       this.placeholder = 'select',
//       required this.containerWidth,
//       required this.containerHeight,
//       required this.hintHorizontalPadding,
//       this.hintColor,
//       this.hintFontSize,
//       this.hintFontWeight})
//       : super(key: key);

//   @override
//   DropDownInsideState createState() => DropDownInsideState();
// }

// class _DropDownInsideState extends State<DropDownInside> {
//   final LayerLink _layerLink = LayerLink();
//   OverlayEntry? _overlayEntry;

//   void _toggleDropdown() {
//     if (_overlayEntry == null) {
//       overlayEntry = createOverlayEntry();
//       Overlay.of(context).insert(_overlayEntry!);
//     } else {
//       _overlayEntry?.remove();
//       _overlayEntry = null;
//     }
//   }

//   OverlayEntry _createOverlayEntry() {
//     RenderBox renderBox = context.findRenderObject() as RenderBox;
//     var size = renderBox.size;
//     // ignore: unused_local_variable
//     var offset = renderBox.localToGlobal(Offset.zero);

//     return OverlayEntry(
//       builder: (context) => GestureDetector(
//         behavior: HitTestBehavior.translucent,
//         onTap: () {
//           _overlayEntry?.remove();
//           _overlayEntry = null;
//         },
//         child: Stack(
//           children: [
//             Positioned(
//               width: size.width,
//               child: CompositedTransformFollower(
//                 link: _layerLink,
//                 showWhenUnlinked: false,
//                 offset: Offset(0.0, size.height),
//                 child: Material(
//                   shadowColor: Colors.white,
//                   elevation: 4.0,
//                   shape: Border.all(color: AppColors.grayColor),
//                   child: Container(
//                     constraints: BoxConstraints(
//                       maxHeight: AppSizes.getPhoneSize(200),
//                     ),
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(5)),
//                     ),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: widget.options
//                             .map((option) => _buildMenuItem(option))
//                             .toList(),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMenuItem(String text) {
//     return InkWell(
//       hoverColor: const Color(0xFFEDF2FE),
//       onTap: () {
//         widget.onItemSelected(text);
//         _toggleDropdown();
//       },
//       child: Container(
//         width: AppSizes.getPhoneSize(436),
//         padding: EdgeInsets.symmetric(
//           horizontal: AppSizes.getPhoneSize(2),
//           vertical: AppSizes.getPhoneSize(4),
//         ),
//         child: TextWidget(
//           data: text,
//           context: context,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CompositedTransformTarget(
//       link: _layerLink,
//       child: GestureDetector(
//         onTap: _toggleDropdown,
//         child: Container(
//           width: AppSizes.getWebSize(widget.containerWidth),
//           height: AppSizes.getWebSize(widget.containerHeight),
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: AppColors.grayColor,
//               width: AppSizes.getWebSize(1),
//             ),
//             borderRadius: BorderRadius.circular(4.0),
//           ),
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//               horizontal: AppSizes.getWebSize(widget.hintHorizontalPadding),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 TextWidget(
//                   data: widget.selectedItem,
//                   context: context,
//                   color: widget.hintColor,
//                   fontSize: widget.hintFontSize ?? AppSizes.smallTextSize,
//                   fontWeight: widget.hintFontWeight ?? FontWeight.normal,
//                 ),
//                 IconWidget(
//                   context: context,
//                   data: _overlayEntry == null
//                       ? AppIcons.arrowDown1.name
//                       : AppIcons.arrow_up.name,
//                   height: 6,
//                   width: 9,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }