import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ticket/common/widgets/sizedbox_widget.dart';
import 'package:ticket/constant/app_sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedboxWidget(height: 20.h,),
          Center(child: Text("HOME-PAGE"),),
          SizedboxWidget(height: 20.h,),
          Center(child: Text("HOME-PAGE"),),
        ],
      )
    );
  }
}