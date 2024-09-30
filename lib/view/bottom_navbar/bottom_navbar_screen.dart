import 'package:flutter/cupertino.dart';

import '../../import/common_imports.dart';
import '../ca03_book_shipment/ca03_book_shipment_screen.dart';
import '../ca12_check_out/ca12_check_out_screen.dart';
import '../captains/captains_screen.dart';
import '../home/home_screen.dart';
import '../screens_with_progress_bar/screens_with_progress_bar.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  _BottomNavbarScreenState createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int _selectedIndex = 0;

  late CupertinoTabController _tabController;
  final List<GlobalKey<NavigatorState>> _navigatorKeys = List.generate(
    5,
    (index) => GlobalKey<NavigatorState>(),
  );

  @override
  void initState() {
    super.initState();
    _tabController = CupertinoTabController();
  }

  void _onTap(int index) {
    if (_tabController.index == index) {
      setState(() {
        _selectedIndex = index; // Update the selected index
      });
      // Pop to the first route (home route) when tapping on the tab again
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    }
  }

  BottomNavigationBarItem _buildNavBarItem(String assetPath, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return BottomNavigationBarItem(
      icon: Image.asset(
        assetPath,
        height: 20.h,
        width: 20.w,
        color: isSelected ? Colors.black : Colors.grey, // Change icon color based on selection
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: _tabController,
      tabBar: CupertinoTabBar(
        border: const Border(),

        backgroundColor: Colors.white,
        activeColor: Colors.black,
        items: <BottomNavigationBarItem>[
          _buildNavBarItem("assets/images/home.png", 'Home', 0),
          _buildNavBarItem("assets/images/profile.png", 'Captains', 1),
          _buildNavBarItem("assets/images/box.png", 'New Shipment', 2),
          _buildNavBarItem("assets/images/history.png", 'History', 3),
          _buildNavBarItem("assets/images/menu.png", 'Menu', 4),
        ],
        onTap: _onTap, // Call the onTap function
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          navigatorKey: _navigatorKeys[index], // Use unique navigator key for each tab
          builder: (context) {
            switch (index) {
              case 0:
                return CupertinoPageScaffold(child: HomeScreen());
              case 1:
                return CupertinoPageScaffold(child: CaptainsScreen());
              case 2:
                return CupertinoPageScaffold(child: ProgressBarScreens());
              case 3:
                return CupertinoPageScaffold(child: Ca03BookShipmentScreen());
              case 4:
                return CupertinoPageScaffold(child: CA12CheckOutScreen());
              default:
                return CupertinoPageScaffold(child: HomeScreen());
            }
          },
        );
      },
    ); //   BottomNavigationBarItem _buildNavBarItem(
  }
}

class BottomNavbarScreen1 extends StatefulWidget {
  const BottomNavbarScreen1({super.key});

  @override
  _BottomNavbarScreen1State createState() => _BottomNavbarScreen1State();
}

class _BottomNavbarScreen1State extends State<BottomNavbarScreen1> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        border: const Border(),
        backgroundColor: Colors.white,
        activeColor: Colors.black,
        items: <BottomNavigationBarItem>[
          _buildNavBarItem("assets/images/home.png", 'Home', 0),
          _buildNavBarItem("assets/images/profile.png", 'Captains', 1),
          _buildNavBarItem("assets/images/box.png", 'New Shipment', 2),
          _buildNavBarItem("assets/images/history.png", 'History', 3),
          _buildNavBarItem("assets/images/menu.png", 'Menu', 4),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
        },
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(child: HomeScreen()),
            );
          case 1:
            return CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(child: CaptainsScreen()),
            );
          case 2:
            return CupertinoTabView(
              builder: (context) => CupertinoPageScaffold(child: ProgressBarScreens()),
            );
          case 3:
            return CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(child: Ca03BookShipmentScreen()),
            );
          case 4:
            return CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(child: HomeScreen()),
            );
          default:
            return CupertinoTabView(
              builder: (context) => const CupertinoPageScaffold(child: HomeScreen()),
            );
        }
      },
    );
  }

  BottomNavigationBarItem _buildNavBarItem(String assetPath, String label, int index) {
    bool isSelected = _selectedIndex == index;
    return BottomNavigationBarItem(
      icon: Image.asset(
        assetPath,
        height: 20.h,
        width: 20.w,
        color: isSelected ? Colors.black : Colors.grey, // Change icon color based on selection
      ),
      label: label,
    );
  }
}
//
// // class BottomNavBarScreen extends StatefulWidget {
// //   const BottomNavBarScreen({super.key});
// //
// //   @override
// //   _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
// // }
// //
// // class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
// //   int _selectedIndex = 0;
// //
// //   static const List<Widget> _widgetOptions = [
// //     HomeScreen(),
// //     CaptainsScreen(),
// //     Text('New Shipment'),
// //     Text('History'),
// //     Text('Menu'),
// //   ];
// //
// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: _widgetOptions.elementAt(_selectedIndex),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         backgroundColor: Colors.white,
// //         selectedFontSize: 12.sp,
// //         unselectedFontSize: 10.sp,
// //         items: <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               "assets/images/home.png",
// //               height: 20.h,
// //               width: 20.w,
// //               color: _selectedIndex == 0 ? kGreen : k7F7F7F,
// //             ),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               "assets/images/profile.png",
// //               height: 20.h,
// //               width: 20.w,
// //               color: _selectedIndex == 1 ? kGreen : k7F7F7F,
// //             ),
// //             label: 'Captains',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               "assets/images/box.png",
// //               height: 20.h,
// //               width: 20.w,
// //               color: _selectedIndex == 2 ? kGreen : k7F7F7F,
// //             ),
// //             label: 'New Shipment',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               "assets/images/history.png",
// //               height: 20.h,
// //               width: 20.w,
// //               color: _selectedIndex == 3 ? kGreen : k7F7F7F,
// //             ),
// //             label: 'History',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Image.asset(
// //               "assets/images/menu.png",
// //               height: 20.h,
// //               width: 20.w,
// //               color: _selectedIndex == 4 ? kGreen : k7F7F7F,
// //             ),
// //             label: 'Menu',
// //           ),
// //         ],
// //         currentIndex: _selectedIndex,
// //         selectedItemColor: Colors.green[800],
// //         onTap: _onItemTapped,
// //         type: BottomNavigationBarType.fixed, // This ensures all labels show
// //       ),
// //     );
// //   }
// // }
