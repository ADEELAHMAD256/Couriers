import '../import/common_imports.dart';
import 'header_text.dart';

class HeaderWithArrow extends StatelessWidget {
  final String? title;
  const HeaderWithArrow({
    super.key,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 28.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.r,
              ),
            ),
            HerderText(text: title ?? ""),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.transparent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
