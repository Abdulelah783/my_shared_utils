bool mIsNull({
  required dynamic val,
}) {
  try {
    if (val == null ||
        (val is String && val.isEmpty) ||
        (val is String && val.toLowerCase() == 'null'.toLowerCase())) {
      return true;
    }
    return false;
  } catch (e, stack) {
    return false;
  }
}
