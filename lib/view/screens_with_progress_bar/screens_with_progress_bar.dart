import '../../import/common_imports.dart';
import '../ca04_pick_up_details/ca04_pick_up_details_screen.dart';
import '../ca05_location_on_map/ca05_location_on_map_screen.dart';
import '../ca06_shipment_details/ca06_shipment_details_screen.dart';
import '../ca08_payment_details/ca08_payment_details_screen.dart';
import '../ca10_drop_off_details/ca10_drop_off_details_screen.dart';

class ProgressBarScreens extends StatefulWidget {
  @override
  _ProgressBarScreensState createState() => _ProgressBarScreensState();
}

class _ProgressBarScreensState extends State<ProgressBarScreens> {
  double progress = 0.0;
  int currentPage = 0;
  final PageController _pageController = PageController();

  void increaseProgress() {
    setState(() {
      progress += 0.23;
      _goToNextPage() // Update based on the number of steps in your form
          ;
    });
  }

  void _goToNextPage() {
    if (currentPage < 6) {
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

  void decreaseProgress() {
    setState(() {
      progress -= 0.23;
      _goToPreviousPage() // Update based on the number of steps in your form
          ;
    });
  }

  void _goToPreviousPage() {
    if (currentPage <= 6) {
      setState(() {
        currentPage--;
        _pageController.previousPage(
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
              goToNextPage: decreaseProgress,
              subTitle: currentPage == 0
                  ? "Pick-Up Details"
                  : currentPage == 1
                      ? "Location on Map"
                      : currentPage == 2
                          ? "Shipment Details"
                          : currentPage == 3
                              ? "Payment Details"
                              : currentPage == 4
                                  ? "Drop-Off Details"
                                  : "",
              assetName: currentPage == 0
                  ? "assets/icons/arrow_box.svg"
                  : currentPage == 1
                      ? "assets/icons/location_icon.svg"
                      : currentPage == 2
                          ? "assets/icons/measurement.svg"
                          : "assets/icons/arrow_box.svg",
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
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Ca04PickUpDetailsScreen(goToNextPage: increaseProgress);
                  } else if (index == 1) {
                    return Ca05LocationOnMapScreen(goToNextPage: increaseProgress);
                  } else if (index == 2) {
                    return Ca06ShipmentDetailsScreen(goToNextPage: increaseProgress);
                  } else if (index == 3) {
                    return Ca08PaymentDetailsScreen(goToNextPage: increaseProgress);
                  } else {
                    return Ca10DropOffDetailsScreen();
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
