import 'package:couriers/import/common_imports.dart';
import 'package:couriers/view/captains/captains_screen.dart';
import 'package:couriers/view/home/home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [
    HomeScreen(),
    CaptainsScreen(),
    Text('New Shipment'),
    Text('History'),
    Text('Menu'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedFontSize: 12.sp,
        unselectedFontSize: 10.sp,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home.png",
              height: 20.h,
              width: 20.w,
              color: _selectedIndex == 0 ? kGreen : k7F7F7F,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/profile.png",
              height: 20.h,
              width: 20.w,
              color: _selectedIndex == 1 ? kGreen : k7F7F7F,
            ),
            label: 'Captains',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/box.png",
              height: 20.h,
              width: 20.w,
              color: _selectedIndex == 2 ? kGreen : k7F7F7F,
            ),
            label: 'New Shipment',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/history.png",
              height: 20.h,
              width: 20.w,
              color: _selectedIndex == 3 ? kGreen : k7F7F7F,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/menu.png",
              height: 20.h,
              width: 20.w,
              color: _selectedIndex == 4 ? kGreen : k7F7F7F,
            ),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // This ensures all labels show
      ),
    );
  }
}
