import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_US.dart';
import 'tr_TR.dart';

class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en', 'US');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'tr_TR': tr_TR,
      };
}
