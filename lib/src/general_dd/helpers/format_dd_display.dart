String formatDisplay(String? id, String? name) {
  if (id == null || id.isEmpty) return name ?? '';
  return "$id - ${name ?? ''}";
}
