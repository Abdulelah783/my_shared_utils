import 'm_is_null.dart';

dynamic shrdNvl({required dynamic val1, dynamic val2, dynamic val3}) {
  if (!mIsNull(val: val1)) return val1!;
  if (!mIsNull(val: val2)) return val2!;
  if (!mIsNull(val: val3)) return val3!;
  return '';
}
