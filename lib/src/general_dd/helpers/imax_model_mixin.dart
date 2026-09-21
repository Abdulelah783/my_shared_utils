import 'map_smart_access.dart';

dynamic getValue(Map<String, dynamic> json, String field) {
  return json.getField(field);
}

mixin ImaxModelMixin {
  // دالة مساعدة لتسهيل بناء الـ fromJson
  dynamic getValue(Map<String, dynamic> json, String field) {
    return json.getField(field);
  }
}
