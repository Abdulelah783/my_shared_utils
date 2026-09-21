import 'package:my_shared_utils/src/general_dd/models/shrd_general_model.dart';

class DropDownResult {
  final List<ShrdGeneralModel> list;
  final ShrdGeneralModel selected;
  const DropDownResult({required this.list, required this.selected});
}
