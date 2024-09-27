import '../../import/common_imports.dart';
import '../ca04_pick_up_details/ca04_pick_up_details_screen.dart';
import '../ca05_location_on_map/ca05_location_on_map_screen.dart';
import '../ca06_shipment_details/ca06_shipment_details_screen.dart';

class ProgressBarScreens extends StatefulWidget {
  @override
  _ProgressBarScreensState createState() => _ProgressBarScreensState();
}

class _ProgressBarScreensState extends State<ProgressBarScreens> {
  double progress = 0.0;
  int currentPage = 0;
  final PageController _pageController = PageController();

  void updateProgress() {
    setState(() {
      progress += 1.0 / 6.0;
      _goToNextPage() // Update based on the number of steps in your form
          ;
    });
  }

  void _goToNextPage() {
    if (currentPage < 2) {
      setState(() {
        currentPage++;
        _pageController.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            HeaderWithArrowWithActions(
              title: "Ahmad Shehab",
              subTitle: currentPage == 0
                  ? "Pick-Up Details"
                  : currentPage == 1
                      ? "Location on Map"
                      : currentPage == 2
                          ? "Shipment Details"
                          : "",
              assetName: currentPage == 0
                  ? "assets/icons/arrow_box.svg"
                  : currentPage == 1
                      ? "assets/icons/location_icon.svg"
                      : "assets/icons/measurement.svg",
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: CustomProgressIndicator(
                progress: progress,
                height: 6.0.h, // total height of the thicker bar
                backgroundColor: kB5AFAF,
                progressColor: kRed,
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Ca04PickUpDetailsScreen(
                        goToNextPage: updateProgress);
                  } else if (index == 1) {
                    return Ca05LocationOnMapScreen();
                  } else if (index == 2) {
                    return const Ca06ShipmentDetailsScreen();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomProgressIndicator extends StatelessWidget {
  final double progress;
  final double height;
  final Color backgroundColor;
  final Color progressColor;

  const CustomProgressIndicator({
    Key? key,
    required this.progress,
    this.height = 6.0,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.red,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: height - 2,
          margin: EdgeInsets.only(top: 1.h), // slightly thinner
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        Container(
          height: height, // thicker
          width: MediaQuery.of(context).size.width * progress,
          decoration: BoxDecoration(
            color: progressColor,
            borderRadius: BorderRadius.circular(height),
          ),
        ),
      ],
    );
  }
}
