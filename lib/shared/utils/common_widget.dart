import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonWidget {
  static AppBar appBar(
      BuildContext context, String title, IconData? backIcon, Color color,
      {void Function()? callback}) {
    return AppBar(
      leading: backIcon == null
          ? null
          : IconButton(
              icon: Icon(backIcon, color: color),
              onPressed: () {
                if (callback != null) {
                  callback();
                } else {
                  Navigator.pop(context);
                }
              },
            ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(color: color, fontFamily: 'Rubik'),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
    );
  }

  static SizedBox rowHeight({double height = 30}) {
    return SizedBox(height: height);
  }

  static SizedBox rowWidth({double width = 30}) {
    return SizedBox(width: width);
  }

  static void errorSnackbar(String msg, [String title = 'Hata']) async {
    Get.snackbar(
      title,
      msg,
      backgroundColor: Colors.red,
      snackPosition: SnackPosition.BOTTOM,
      icon: const Icon(
        Icons.warning_amber_outlined,
        color: Colors.white,
        size: 30,
      ),
    );
    // EasyLoading.dismiss();
  }
}
