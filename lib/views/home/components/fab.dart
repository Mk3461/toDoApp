
import 'dart:developer';

import 'package:deneme_1111/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Fab extends StatelessWidget {
  const Fab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      log("Task View");
      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Icon(
              Icons.add,
              color:Colors.white,
            )
          )  
          ),
        ),
    );
  }
}