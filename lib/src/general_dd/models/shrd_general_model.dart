import 'package:my_shared_utils/src/general_dd/helpers/imax_model_mixin.dart';

class ShrdGeneralModel with ImaxModelMixin {
  String? col1, col2, col3, col4, col5, col6, col7, col8, col9, col10;
  String? col11, col12, col13, col14, col15, col16, col17, col18, col19, col20;
  String? col21, col22, col23, col24, col25, col26, col27, col28, col29, col30;

  ShrdGeneralModel({
    this.col1,
    this.col2,
    this.col3,
    this.col4,
    this.col5,
    this.col6,
    this.col7,
    this.col8,
    this.col9,
    this.col10,
    this.col11,
    this.col12,
    this.col13,
    this.col14,
    this.col15,
    this.col16,
    this.col17,
    this.col18,
    this.col19,
    this.col20,
    this.col21,
    this.col22,
    this.col23,
    this.col24,
    this.col25,
    this.col26,
    this.col27,
    this.col28,
    this.col29,
    this.col30,
  });

  // قائمة مساعدة للوصول للمتغيرات برمجياً داخل الكلاس
  List<String?> get _colsList => [
    col1,
    col2,
    col3,
    col4,
    col5,
    col6,
    col7,
    col8,
    col9,
    col10,
    col11,
    col12,
    col13,
    col14,
    col15,
    col16,
    col17,
    col18,
    col19,
    col20,
    col21,
    col22,
    col23,
    col24,
    col25,
    col26,
    col27,
    col28,
    col29,
    col30,
  ];

  // من JSON إلى Object بطريقة ذكية
  ShrdGeneralModel.fromJson(Map<String, dynamic> json) {
    col1 = getValue(json, ShrdGeneralModelFields.col1)?.toString();
    col2 = getValue(json, ShrdGeneralModelFields.col2)?.toString();
    col3 = getValue(json, ShrdGeneralModelFields.col3)?.toString();
    col4 = getValue(json, ShrdGeneralModelFields.col4)?.toString();
    col5 = getValue(json, ShrdGeneralModelFields.col5)?.toString();
    col6 = getValue(json, ShrdGeneralModelFields.col6)?.toString();
    col7 = getValue(json, ShrdGeneralModelFields.col7)?.toString();
    col8 = getValue(json, ShrdGeneralModelFields.col8)?.toString();
    col9 = getValue(json, ShrdGeneralModelFields.col9)?.toString();
    col10 = getValue(json, ShrdGeneralModelFields.col10)?.toString();
    col11 = getValue(json, ShrdGeneralModelFields.col11)?.toString();
    col12 = getValue(json, ShrdGeneralModelFields.col12)?.toString();
    col13 = getValue(json, ShrdGeneralModelFields.col13)?.toString();
    col14 = getValue(json, ShrdGeneralModelFields.col14)?.toString();
    col15 = getValue(json, ShrdGeneralModelFields.col15)?.toString();
    col16 = getValue(json, ShrdGeneralModelFields.col16)?.toString();
    col17 = getValue(json, ShrdGeneralModelFields.col17)?.toString();
    col18 = getValue(json, ShrdGeneralModelFields.col18)?.toString();
    col19 = getValue(json, ShrdGeneralModelFields.col19)?.toString();
    col20 = getValue(json, ShrdGeneralModelFields.col20)?.toString();
    col21 = getValue(json, ShrdGeneralModelFields.col21)?.toString();
    col22 = getValue(json, ShrdGeneralModelFields.col22)?.toString();
    col23 = getValue(json, ShrdGeneralModelFields.col23)?.toString();
    col24 = getValue(json, ShrdGeneralModelFields.col24)?.toString();
    col25 = getValue(json, ShrdGeneralModelFields.col25)?.toString();
    col26 = getValue(json, ShrdGeneralModelFields.col26)?.toString();
    col27 = getValue(json, ShrdGeneralModelFields.col27)?.toString();
    col28 = getValue(json, ShrdGeneralModelFields.col28)?.toString();
    col29 = getValue(json, ShrdGeneralModelFields.col29)?.toString();
    col30 = getValue(json, ShrdGeneralModelFields.col30)?.toString();
  }
  // من Object إلى JSON باستخدام Loop لتقليص الكود
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    List<String?> cols = _colsList;

    for (int i = 0; i < cols.length; i++) {
      data["col${i + 1}"] = cols[i];
    }

    return data;
  }
}

class ShrdGeneralModelFields {
  static const String col1 = "col1";
  static const String col2 = "col2";
  static const String col3 = "col3";
  static const String col4 = "col4";
  static const String col5 = "col5";
  static const String col6 = "col6";
  static const String col7 = "col7";
  static const String col8 = "col8";
  static const String col9 = "col9";
  static const String col10 = "col10";
  static const String col11 = "col11";
  static const String col12 = "col12";
  static const String col13 = "col13";
  static const String col14 = "col14";
  static const String col15 = "col15";
  static const String col16 = "col16";
  static const String col17 = "col17";
  static const String col18 = "col18";
  static const String col19 = "col19";
  static const String col20 = "col20";
  static const String col21 = "col21";
  static const String col22 = "col22";
  static const String col23 = "col23";
  static const String col24 = "col24";
  static const String col25 = "col25";
  static const String col26 = "col26";
  static const String col27 = "col27";
  static const String col28 = "col28";
  static const String col29 = "col29";
  static const String col30 = "col30";
}
