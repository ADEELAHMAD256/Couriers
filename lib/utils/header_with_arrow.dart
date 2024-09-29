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
                color: k7F7F7F,
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

class HeaderWithArrowWithActions extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? assetName;
  final Function? goToNextPage;

  const HeaderWithArrowWithActions({
    super.key,
    this.title,
    this.assetName,
    this.subTitle,
    this.goToNextPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => goToNextPage!(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20.r,
                  color: k7F7F7F,
                ),
              ),
              Column(
                children: [
                  CustomText(
                    text: title ?? "",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 15.h),
                  CustomText(
                    text: subTitle ?? "",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SvgPicture.asset(
                assetName!,
                height: 60.h,
                width: 60.w,
              )
            ],
          ),
        ),
      ],
    );
  }
}
