import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppButtons {
  static Widget buildMaterialButton({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        // Thêm bóng vào nút
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 236, 42, 107), // Màu của bóng
            blurRadius: 10, // Độ mờ của bóng
            spreadRadius: 2, // Độ lan tỏa của bóng
            offset: Offset(0, 4), // Vị trí của bóng (ngang, dọc)
          ),
        ],
        borderRadius:
            BorderRadius.circular(30), // Đảm bảo góc bo tròn giống nút
      ),
      child: MaterialButton(
        onPressed: onTap,
        color: AppColors.themeColor,
        splashColor: AppColors.lawGreen,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        hoverColor: AppColors.aqua,
        elevation: 7,
        height: 46,
        minWidth: 130,
        focusElevation: 12,
        child: Text(
          buttonName,
          style: AppTextStyles.headerTextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
