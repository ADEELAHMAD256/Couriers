import 'package:couriers/import/common_imports.dart';

import '../../../utils/custom_text_field.dart';

class FilterTextFields extends StatelessWidget {
  final String hintText;
  final String icon;
  const FilterTextFields({
    super.key,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(hintText: hintText, icon: icon);
  }
}
