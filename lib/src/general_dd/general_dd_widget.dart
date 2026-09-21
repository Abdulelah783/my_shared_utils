import 'package:flutter/material.dart';
import 'package:my_shared_utils/src/general_dd/general_dd_config.dart';
import 'package:my_shared_utils/src/general_dd/helpers/format_dd_display.dart';
import 'package:my_shared_utils/src/general_dd/helpers/m_is_null.dart';
import 'package:my_shared_utils/src/general_dd/helpers/shrd_m_nvl.dart';
import 'package:my_shared_utils/src/general_dd/models/shrd_general_model.dart';

class GeneralDD extends StatelessWidget {
  final List<ShrdGeneralModel> list;
  final ValueChanged<ShrdGeneralModel?> onSelect;
  final String title;
  final IconData? prefixIcon;
  final ShrdGeneralModel? selected;
  final bool isEnabled;

  // الإضافات الجديدة
  final bool isValidator;
  final String? Function(ShrdGeneralModel?)? validator;
  final AutovalidateMode? autovalidateMode;

  const GeneralDD({
    super.key,
    required this.list,
    required this.onSelect,
    required this.title,
    this.prefixIcon,
    this.isEnabled = true,
    required this.selected,
    this.isValidator = false, // افتراضياً لا يوجد تحقق
    this.validator,
    this.autovalidateMode,
  });

  // دالة التحقق الافتراضية
  String? _defaultValidator(ShrdGeneralModel? val) {
    if (mIsNull(val: val) || mIsNull(val: val?.col1)) {
      return GeneralDDConfig.requiredMessage;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final ShrdGeneralModel? effectiveSelected =
        (selected != null && list.contains(selected))
        ? selected
        : (list.isNotEmpty ? list.first : null);
    final Color primary =
        GeneralDDConfig.primaryColor ?? Theme.of(context).colorScheme.primary;
    return DropdownButtonFormField<ShrdGeneralModel>(
      // تحديد أي validator سيتم استخدامه
      validator: validator ?? (isValidator ? _defaultValidator : null),
      autovalidateMode: autovalidateMode,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
        prefixIcon: prefixIcon != null
            ? Icon(prefixIcon, color: primary)
            : null,
        label: Text(title, style: const TextStyle(fontSize: 14)),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
      ),
      isExpanded: true,
      initialValue: effectiveSelected,
      onChanged: isEnabled ? onSelect : null,
      items: list.map((ShrdGeneralModel val) {
        return DropdownMenuItem<ShrdGeneralModel>(
          value: val,
          child: Text(
            mIsNull(val: val.col2)
                ? shrdNvl(val1: val.col1)
                : formatDisplay(val.col1, val.col2),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
        );
      }).toList(),
    );
  }
}
