import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CashMatrixNavBar extends StatefulWidget {
  const CashMatrixNavBar({super.key});

  @override
  State<CashMatrixNavBar> createState() => _CashMatrixNavBarState();
}

class _CashMatrixNavBarState extends State<CashMatrixNavBar> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int currentIndex) {
    setState(() {
      _selectedIndex = currentIndex;
    });
  }

  void onNavTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
