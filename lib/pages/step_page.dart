import 'package:flutter/material.dart';

import '../widget/custom_step.dart';

class StepPage extends StatefulWidget {
  const StepPage({super.key});

  @override
  State<StepPage> createState() => _StepPageState();
}

class _StepPageState extends State<StepPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final PageController _pageController = PageController();

  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      initialIndex: 0,
      vsync: this,
    );
    super.initState();
  }

  changePage(int page) {
    setState(() {
      _tabController.index = page;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xFF151419),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            TabPageSelector(
              indicatorSize: 16,
              controller: _tabController,
              color: const Color(0xFFECECEC),
              selectedColor: const Color(0xFF76115B),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: changePage,
                children: [
                  CustomStep(
                    img: 'assets/images/capsule.png',
                    title: 'Track your crypto',
                    subtitle:
                        'Track and buy cryptocurrencies at real value, trade with ease and cofidence in one safe and fast application.',
                    btnText: 'Skip',
                    btnClick: () => {
                      changePage(1),
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeIn,
                      )
                    },
                  ),
                  CustomStep(
                    img: 'assets/images/block_matrix_x3.png',
                    title: 'Explore Best Coins',
                    subtitle:
                        'All cryptos go through a rigorous evaluation process and are compared to thousands of other crypto projects.',
                    btnText: 'Skip',
                    btnClick: () => {
                      changePage(2),
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeIn,
                      )
                    },
                  ),
                  CustomStep(
                    img: 'assets/images/cone_hex.png',
                    title: 'Fast Optimization',
                    subtitle:
                        'Ongoing optimization of portfolios to market conditions and adjustment of crytocurrency selection.',
                    btnText: 'Continue Now',
                    btnClick: () async => await Navigator.of(context)
                        .pushNamedAndRemoveUntil('/login', (route) => false),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
