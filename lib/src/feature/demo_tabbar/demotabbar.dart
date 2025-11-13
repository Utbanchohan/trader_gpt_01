import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DemoTabBar extends StatefulWidget {
  const DemoTabBar({super.key});

  @override
  State<DemoTabBar> createState() => _DemoTabBarState();
}

class _DemoTabBarState extends State<DemoTabBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late ScrollController scrollController;

  final List<String> tabs = ["Overview", "Stats", "Settings"];

  double overviewOffset = 0;
  double statsOffset = 0;
  double settingsOffset = 0;

  final GlobalKey overviewKey = GlobalKey();
  final GlobalKey statsKey = GlobalKey();
  final GlobalKey settingsKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);

    tabController.index = 0;

    scrollController = ScrollController();
    scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    if (!mounted) return;

    final offset = scrollController.offset;

    if (statsOffset == 0 || settingsOffset == 0) return;

    if (offset >= settingsOffset - 200) {
      if (tabController.index != 2) tabController.animateTo(2);
    } else if (offset >= statsOffset - 200) {
      if (tabController.index != 1) tabController.animateTo(1);
    } else {
      if (tabController.index != 0) tabController.animateTo(0);
    }
  }

  @override
  void dispose() {
    tabController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(375, 812));

    return Scaffold(
      backgroundColor: const Color(0xFF0B1224),
      body: LayoutBuilder(
        builder: (context, constraints) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            RenderBox? overviewBox =
                overviewKey.currentContext?.findRenderObject() as RenderBox?;
            RenderBox? statsBox =
                statsKey.currentContext?.findRenderObject() as RenderBox?;
            RenderBox? settingsBox =
                settingsKey.currentContext?.findRenderObject() as RenderBox?;

            if (overviewBox != null &&
                statsBox != null &&
                settingsBox != null) {
              overviewOffset = 0;
              statsOffset =
                  statsBox.localToGlobal(Offset.zero).dy +
                  scrollController.offset;
              settingsOffset =
                  settingsBox.localToGlobal(Offset.zero).dy +
                  scrollController.offset;
            }
          });

          return DefaultTabController(
            length: tabs.length,
            initialIndex: 0, // ✅ Force start from first tab
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  backgroundColor: const Color(0xFF0B1224),
                  pinned: true,
                  floating: true,
                  elevation: 0,
                  title: const Text(
                    "Demo TabBar",
                    style: TextStyle(color: Colors.white),
                  ),
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(55.h),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 10.w, bottom: 8.h),
                        child: TabBar(
                          controller: tabController,
                          isScrollable: true,
                          indicator: BoxDecoration(
                            color: const Color(0xFF1B254B),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorPadding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 6,
                          ),
                          onTap: (index) async {
                            await Future.delayed(
                              const Duration(milliseconds: 50),
                            );

                            double target = 0;
                            if (index == 1) target = statsOffset;
                            if (index == 2) target = settingsOffset;

                            if (target == 0) {
                              RenderBox? statsBox =
                                  statsKey.currentContext?.findRenderObject()
                                      as RenderBox?;
                              RenderBox? settingsBox =
                                  settingsKey.currentContext?.findRenderObject()
                                      as RenderBox?;
                              if (statsBox != null) {
                                statsOffset =
                                    statsBox.localToGlobal(Offset.zero).dy +
                                    scrollController.offset;
                              }
                              if (settingsBox != null) {
                                settingsOffset =
                                    settingsBox.localToGlobal(Offset.zero).dy +
                                    scrollController.offset;
                              }
                              if (index == 1) target = statsOffset;
                              if (index == 2) target = settingsOffset;
                            }

                            scrollController.animateTo(
                              target,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          tabs: tabs
                              .map(
                                (t) => Tab(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 6,
                                    ),
                                    child: Text(
                                      t,
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              body: SingleChildScrollView(
                controller: scrollController,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(title: "Overview", sectionKey: overviewKey),
                    const OverviewTab(),
                    SectionTitle(title: "Stats", sectionKey: statsKey),
                    const StatsTab(),
                    SectionTitle(title: "Settings", sectionKey: settingsKey),
                    const SettingsTab(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  final Key sectionKey;

  const SectionTitle({
    super.key,
    required this.title,
    required this.sectionKey,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      key: sectionKey,
      padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFF1B254B),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "Overview Item ${index + 0}",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class StatsTab extends StatelessWidget {
  const StatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.deepPurple.shade700,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "Stats Data ${index + 1}",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        8,
        (index) => Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.teal.shade700,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            "Settings Option ${index + 2}",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
