import 'package:flutter/material.dart';

/// إعدادات GeneralDD — تُضبط مرة واحدة من التطبيق عند الإقلاع حتى تبقى
/// المكتبة مستقلة عن أي تطبيق محدد (ألوان، ترجمة...).
class GeneralDDConfig {
  const GeneralDDConfig._();

  /// اللون الأساسي للـ Dropdown (الأيقونة والحدود).
  /// إذا كان null تُستخدم Theme.of(context).colorScheme.primary
  static Color? primaryColor;

  /// مزوّد رسالة "الحقل مطلوب" — دالة بدل قيمة ثابتة حتى تلتقط
  /// تغييرات اللغة لحظياً (مثلاً مع GetX: () => Keys.requiredField.tr)
  static String Function()? requiredMessageResolver;

  /// رسالة افتراضية إذا لم يُضبط المزوّد
  static String get requiredMessage =>
      requiredMessageResolver?.call() ?? 'Required field';
}
