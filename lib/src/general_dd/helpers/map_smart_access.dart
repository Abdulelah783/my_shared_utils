extension MapSmartAccess on Map<String, dynamic> {
  // دالة عامة تجلب القيمة وتتجاهل حالة الأحرف
  dynamic getField(String fieldConstant) {
    final key = keys.firstWhere(
      (k) => k.toString().toLowerCase() == fieldConstant.toLowerCase(),
      orElse: () => '',
    );
    return key.isEmpty ? null : this[key];
  }
}
