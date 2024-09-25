import 'package:couriers/import/common_imports.dart';
import 'components/buttons/three_buttons.dart';
import 'components/credit_card.dart';
import 'components/header.dart';
import 'components/search_tracking_number.dart';
import 'components/shipment_list.dart';
import 'components/shipment_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite,
      body: SafeArea(
        child: Column(
          children: [
            const Header(),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  const CreditCard(),
                  SizedBox(height: 40.h),
                  const SearchTrackingNumber(),
                  SizedBox(height: 25.h),
                  const ThreeButtons(),
                  SizedBox(height: 25.h),
                  const ShipmentsText(),
                  SizedBox(height: 25.h),
                ],
              ),
            ),
            const ShipmentList()
          ],
        ),
      ),
    );
  }
}
