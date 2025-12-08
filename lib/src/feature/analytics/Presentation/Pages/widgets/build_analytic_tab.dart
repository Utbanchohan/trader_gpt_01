import 'package:flutter/material.dart';
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
  bool _isScrollingProgrammatically = false;

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
    // Skip if we're scrolling programmatically (via tap)
    if (_isScrollingProgrammatically) return;

    const double headerHeight = 60.0;
    const double threshold = 100.0; // Threshold for section activation

    String? newActiveSection;

    for (var section in sections) {
      final String id = section['id'];
      final key = _keys[id];

      if (key?.currentContext == null) continue;

      try {
        final box = key!.currentContext!.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);

        // Check if section is in the active zone (just below the header)
        // A section is active if its top is at or above the header + threshold
        // and its bottom is below the header
        final sectionTop = position.dy;
        final sectionBottom = position.dy + box.size.height;

        if (sectionTop <= headerHeight + threshold &&
            sectionBottom > headerHeight) {
          newActiveSection = id;
          break;
        }
      } catch (e) {
        // Ignore errors during layout
        continue;
      }
    }

    if (newActiveSection != null && _activeSection != newActiveSection) {
      setState(() => _activeSection = newActiveSection!);
    }
  }

  Future<void> scrollToSection(String sectionId) async {
    final key = _keys[sectionId];
    if (key?.currentContext == null) {
      debugPrint('Key context is null for section: $sectionId');
      return;
    }

    const double headerHeight = 60.0;

    // Set flag to prevent _handleScroll from interfering
    _isScrollingProgrammatically = true;

    // Update active section immediately
    setState(() => _activeSection = sectionId);

    try {
      final box = key!.currentContext!.findRenderObject() as RenderBox;
      final position = box.localToGlobal(Offset.zero);

      // Calculate the target scroll offset
      // We want to position the section just below the header
      final targetOffset =
          _scrollController.offset + position.dy - headerHeight;

      // Clamp the offset to valid scroll range
      final maxScroll = _scrollController.position.maxScrollExtent;
      final minScroll = _scrollController.position.minScrollExtent;
      final clampedOffset = targetOffset.clamp(minScroll, maxScroll);

      debugPrint('Scrolling to section: $sectionId, offset: $clampedOffset');

      // Animate to target position
      await _scrollController.animateTo(
        clampedOffset,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    } catch (e) {
      debugPrint('Error scrolling to section: $e');
    } finally {
      // Re-enable scroll detection after a short delay
      Future.delayed(const Duration(milliseconds: 100), () {
        if (mounted) {
          _isScrollingProgrammatically = false;
        }
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(_handleScroll);
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
    if (widget.chatRouting.type.toLowerCase() == "crypto") {
      // cryptoApis();
    } else {
      // firstIndexData();
    }
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild BuildAnalyticTab");
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
      color: AppColors.primaryColor,
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
                        : AppColors.colorB2B2B7.withValues(alpha: 0.4),
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
