import '../import/common_imports.dart';
import 'header_text.dart';

class HeaderWithArrow extends StatelessWidget {
  final String? title;
  final double? titleWeight;
  const HeaderWithArrow({
    super.key,
    this.title,
    this.titleWeight,
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
            SizedBox(
              width: titleWeight,
              child: HerderText(text: title ?? ""),
            ),
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
  final bool? isNavigate;
  final bool? withAsset;

  const HeaderWithArrowWithActions({
    super.key,
    this.title,
    this.assetName,
    this.subTitle,
    this.goToNextPage,
    this.isNavigate = false,
    this.withAsset = true,
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
                onPressed: () => isNavigate! ? Navigator.pop(context) : goToNextPage!(),
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
              withAsset!
                  ? SvgPicture.asset(
                      assetName!,
                      height: 60.h,
                      width: 60.w,
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ],
    );
  }
}

class HeaderWithArrowWithSubTitle extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Function? goToNextPage;
  final bool? isNavigate;

  const HeaderWithArrowWithSubTitle({
    super.key,
    this.title,
    this.subTitle,
    this.goToNextPage,
    this.isNavigate = false,
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
                onPressed: () => isNavigate! ? Navigator.pop(context) : goToNextPage!(),
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
                  // SizedBox(height: 15.h),
                  CustomText(
                    text: subTitle ?? "",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
              SizedBox(width: 20.w),
            ],
          ),
        ),
      ],
    );
  }
}
