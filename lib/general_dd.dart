/// General Dropdown — مكتبة Dropdown موحّدة قابلة للمشاركة بين المشاريع.
///
/// الاستخدام:
/// 1. اضبط الإعدادات مرة واحدة عند إقلاع التطبيق:
///    GeneralDDConfig.primaryColor = ...;
///    GeneralDDConfig.requiredMessageResolver = () => ...;
/// 2. استخدم GeneralDD كأي widget عادي.
library;

export 'src/general_dd/general_dd_widget.dart';
export 'src/general_dd/general_dd_config.dart';
export 'src/general_dd/models/shrd_general_model.dart';
export 'src/general_dd/models/drop_down_result.dart';
export 'src/general_dd/helpers/format_dd_display.dart';
export 'src/general_dd/helpers/m_is_null.dart';
export 'src/general_dd/helpers/shrd_m_nvl.dart';
export 'src/general_dd/helpers/map_smart_access.dart';
export 'src/general_dd/helpers/imax_model_mixin.dart';
