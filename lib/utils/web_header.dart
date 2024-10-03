import '../import/common_imports.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: SvgPicture.asset(
        "assets/icons/bird.svg",
      ),
    );
  }
}

class WebHeader1 extends StatelessWidget {
  const WebHeader1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset("assets/images/web_logo.png", height: 28.h, width: 35.w),
        SvgPicture.asset(
          "assets/icons/bird.svg",
        ),
      ],
    );
  }
}
