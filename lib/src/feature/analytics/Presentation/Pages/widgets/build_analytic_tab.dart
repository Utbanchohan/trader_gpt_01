import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/analysis_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/company_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/earning_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/financial_tab.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/overview_content.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/socket/model/stock_model.dart/stock_model.dart';
import '../../../../chat/domain/model/chat_stock_model.dart';

class BuildAnalyticTab extends StatefulWidget {
  final ChatRouting chatRouting;
  final Stock selectedStock;
  const BuildAnalyticTab({
    super.key,
    required this.chatRouting,
    required this.selectedStock,
  });

  @override
  State<BuildAnalyticTab> createState() => _BuildAnalyticTabState();
}

class _BuildAnalyticTabState extends State<BuildAnalyticTab> {
  ScrollController _scrollController = ScrollController();
  //raza: if its only using in app bar no need to use variable
  final GlobalKey _scrollableKey = GlobalKey();
  final Map<String, GlobalKey> _keys = {};
  final Map<String, GlobalKey> _chipKeys = {};
  String _activeSection = 'overview';

  final List<Map<String, dynamic>> sections = [
    {
      'id': 'overview',
      'title': 'Overview',
      'color': Colors.red,
      "image": Assets.images.categoryc1.path,
    },
    {
      'id': 'company',
      'title': 'Company',
      'color': Colors.green,
      "image": Assets.images.c2.path,
    },
    {
      'id': 'financial',
      'title': 'Financial',
      'color': Colors.blue,
      "image": Assets.images.diagramc3.path,
    },
    {
      'id': 'earnings',
      'title': 'Earnings',
      'color': Colors.orange,
      "image": Assets.images.directboxNotifc4.path,
    },
    {
      'id': 'analytics',
      'title': 'Analytics',
      'color': Colors.orange,
      "image": Assets.images.categoryc1.path,
    },
  ];

  void _handleScroll() {
    double scrollPos = _scrollController.offset;

    for (var section in sections) {
      final String id = section['id'];
      final key = _keys[id];

      if (key?.currentContext == null) continue;

      final box = key!.currentContext!.findRenderObject() as RenderBox;
      final offset = box.localToGlobal(
        Offset.zero,
        ancestor: context.findRenderObject(),
      );

      // Header height
      const double headerHeight = 60;

      // Section becomes active when it is below header but visible
      if (offset.dy <= headerHeight + 10 && offset.dy > -box.size.height / 2) {
        if (_activeSection != id) {
          setState(() => _activeSection = id);
        }
        break;
      }
    }
  }

  void _scrollActiveChipIntoView(String id) {
    final keyContext = _keys[id]?.currentContext;
    if (keyContext == null) return;

    final box = keyContext.findRenderObject() as RenderBox;
    final offset = box.localToGlobal(
      Offset.zero,
      ancestor: context.findRenderObject(),
    );

    // Subtract chip header height (60)
    final scrollOffset = offset.dy + _scrollController.offset - 60;

    _scrollController.animateTo(
      scrollOffset,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );

    // try {
    //   final ctx = _chipKeys[id]?.currentContext;
    //   if (ctx != null) {
    //     Scrollable.ensureVisible(
    //       ctx,
    //       duration: const Duration(milliseconds: 250),
    //       curve: Curves.easeInOut,
    //       alignment: 0.5,
    //     );
    //   }
    // } catch (e) {
    //   // ignore errors if layout not ready
    // }
  }

  Future<void> scrollToSection(String sectionId) async {
    final key = _keys[sectionId];
    if (key == null) return;

    try {
      await Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
        alignment: 0, // scroll to top of viewport
      );

      setState(() => _activeSection = sectionId);
    } catch (_) {
      // Section not built yet; scroll a bit and retry
      await _scrollController.animateTo(
        _scrollController.position.maxScrollExtent * 0.1,
        duration: Duration(milliseconds: 50),
        curve: Curves.easeInOut,
      );

      // Retry
      await Future.delayed(Duration(milliseconds: 50));
      if (key.currentContext != null) {
        await Scrollable.ensureVisible(
          key.currentContext!,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOut,
          alignment: 0,
        );
        setState(() => _activeSection = sectionId);
      }
    }

    // final key = _keys[sectionId];
    // if (key == null || key.currentContext == null) return;

    // // Wait for layout
    // await Future.delayed(Duration(milliseconds: 20));

    // // Get position of the widget
    // final box = key!.currentContext!.findRenderObject() as RenderBox;
    // final position = box.localToGlobal(
    //   Offset.zero,
    //   ancestor: context.findRenderObject(),
    // );

    // // Pinned chips height
    // const double pinnedHeaderHeight = 60;

    // // Calculate final offset inside the scrollable
    // final targetOffset =
    //     _scrollController.offset + position.dy - pinnedHeaderHeight;

    // // Animate to that position
    // await _scrollController.animateTo(
    //   targetOffset,
    //   duration: const Duration(milliseconds: 350),
    //   curve: Curves.easeInOut,
    // );

    // // Update active section
    // setState(() => _activeSection = sectionId);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    ///dummy scroller
    _scrollController = ScrollController();
    //raza: instead of using map with id to save Global key , create section model and use everything there
    //no need to use double maping
    for (var section in sections) {
      _keys[section['id']] = GlobalKey();
      _chipKeys[section['id']] = GlobalKey();
    }
    _scrollController.addListener(_handleScroll);
    if (widget.chatRouting != null) {
      if (widget.chatRouting!.type.toLowerCase() == "crypto") {
        // cryptoApis();
      } else {
        // firstIndexData();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: _scrollableKey,
      controller: _scrollController,
      // physics: BouncingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: _ChipsHeaderDelegate(
            minExtent: 60,
            maxExtent: 60,
            sections: sections,
            activeSectionIdGetter: () => _activeSection,
            chipKeys: _chipKeys,
            onTap: (id) => scrollToSection(id),
          ),
        ),

        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final id = sections[index]['id'];
            switch (id) {
              case "overview":
                return Container(
                  key: _keys[id],
                  child:
                      // OverviewContent(
                      OverviewContentV1(
                        chatRouting: widget.chatRouting,
                        selectedStock: widget.selectedStock,
                      ),
                );

              case "company":
                return Container(
                  key: _keys[id],
                  child: CompanyContentV1(chatRouting: widget.chatRouting),
                );

              case "financial":
                return Container(
                  key: _keys[id],
                  child: FinancialTabV1(symbol: widget.selectedStock.symbol),
                );

              case "earnings":
                return Container(
                  key: _keys[id],
                  child: EarningContentV1(chatRouting: widget.chatRouting),
                );

              case "analytics":
                return Container(
                  key: _keys[id],
                  child: AnalysisContentV1(chatRouting: widget.chatRouting),
                );

              default:
                return Container(height: 600, color: Colors.red);
            }
          }, childCount: sections.length),
        ),
      ],
    );
  }
}

class _ChipsHeaderDelegate extends SliverPersistentHeaderDelegate {
  final double _minExtent;
  final double _maxExtent;
  final List<Map<String, dynamic>> sections;
  final Map<String, GlobalKey> chipKeys;
  //raza: wrong parm type , why its function
  final String Function() activeSectionIdGetter;
  final void Function(String id) onTap;

  _ChipsHeaderDelegate({
    required double minExtent,
    required double maxExtent,
    required this.sections,
    required this.chipKeys,
    required this.activeSectionIdGetter,
    required this.onTap,
  }) : _minExtent = minExtent,
       _maxExtent = maxExtent;

  @override
  double get minExtent => _minExtent;

  @override
  double get maxExtent => _maxExtent;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    //raza: wrong way to use
    final activeId = activeSectionIdGetter();
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: sections.map((section) {
            final id = section['id'] as String;
            final bool isActive = activeId == id;
            return GestureDetector(
              onTap: () => onTap(id),
              child: Container(
                key: chipKeys[id],
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                  color: isActive ? AppColors.bubbleColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: isActive
                        ? Colors.transparent
                        : AppColors.colorB2B2B7.withOpacity(0.4),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      section['image'] as String,
                      width: 14,
                      height: 14,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      section['title'] as String,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: isActive
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
