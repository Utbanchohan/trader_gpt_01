import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/analysis_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/company_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/earning_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/financial_tab.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/overview_content.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';
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
  final ScrollController _scrollController = ScrollController();
  final ScrollController _chipScrollController = ScrollController();

  final Map<String, GlobalKey> _sectionKeys = {};
  final Map<String, GlobalKey> _chipKeys = {};
  String _activeSection = 'overview';
  bool _isScrollingProgrammatically = false;

  final List<Map<String, dynamic>> sections = [
    {
      'id': 'overview',
      'title': 'Overview',

      'image': Assets.images.categoryc1.path,
    },
    {'id': 'company', 'title': 'Company', 'image': Assets.images.c2.path},
    {
      'id': 'financial',
      'title': 'Financial',
      'image': Assets.images.diagramc3.path,
    },
    {
      'id': 'earnings',
      'title': 'Earnings',
      'image': Assets.images.directboxNotifc4.path,
    },
    {
      'id': 'analytics',
      'title': 'Analytics',
      'image': Assets.images.categoryc1.path,
    },
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    for (var section in sections) {
      _sectionKeys[section['id']] = GlobalKey();
      _chipKeys[section['id']] = GlobalKey();
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSection(_activeSection, animate: false);
    });
  }

  void _onScroll() {
    if (_isScrollingProgrammatically) return;

    const double headerHeight = 60;
    const double threshold = 100;

    String? newActive;

    if (_scrollController.offset <= 0) {
      newActive = 'overview';
    } else {
      // 2️⃣ Loop through sections
      for (var i = 0; i < sections.length; i++) {
        final section = sections[i];
        final key = _sectionKeys[section['id']];
        if (key?.currentContext == null) continue;

        final box = key!.currentContext!.findRenderObject() as RenderBox;
        final top = box.localToGlobal(Offset.zero).dy;
        final bottom = top + box.size.height;

        // 3️⃣ LAST section special handling
        if (i == sections.length - 1 &&
            _scrollController.offset >=
                _scrollController.position.maxScrollExtent - 50) {
          newActive = section['id'];
          break;
        }

        // 4️⃣ Normal sections detection
        if (top <= headerHeight + threshold && bottom > headerHeight) {
          newActive = section['id'];
          break;
        }
      }
    }

    // 5️⃣ Update active section if changed
    if (newActive != null && newActive != _activeSection) {
      setState(() => _activeSection = newActive!);
      _scrollChipToActive(newActive!);
    }
  }

  Future<void> _scrollToSection(String id, {bool animate = true}) async {
    final key = _sectionKeys[id];
    if (key?.currentContext == null) return;

    final box = key!.currentContext!.findRenderObject() as RenderBox;
    final offset = box.localToGlobal(Offset.zero).dy;
    const double headerHeight = 60;

    final target = _scrollController.offset + offset - headerHeight;

    _isScrollingProgrammatically = true;

    if (animate) {
      await _scrollController.animateTo(
        target.clamp(
          _scrollController.position.minScrollExtent,
          _scrollController.position.maxScrollExtent,
        ),
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    } else {
      _scrollController.jumpTo(
        target.clamp(
          _scrollController.position.minScrollExtent,
          _scrollController.position.maxScrollExtent,
        ),
      );
    }

    setState(() => _activeSection = id);
    _scrollChipToActive(id);

    Future.delayed(const Duration(milliseconds: 100), () {
      _isScrollingProgrammatically = false;
    });
  }

  void _scrollChipToActive(String id) {
    final key = _chipKeys[id];
    if (key?.currentContext == null || !_chipScrollController.hasClients)
      return;

    final box = key!.currentContext!.findRenderObject() as RenderBox;
    final pos = box.localToGlobal(Offset.zero);
    final width = box.size.width;
    final screenWidth = MediaQuery.of(context).size.width;

    final target =
        _chipScrollController.offset + pos.dx - (screenWidth / 2) + (width / 2);

    _chipScrollController.animateTo(
      target.clamp(
        _chipScrollController.position.minScrollExtent,
        _chipScrollController.position.maxScrollExtent,
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _chipScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 40.w,
                height: 50.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.shapeRightSide.path),
                    fit: BoxFit.fill,
                  ),
                ),
                padding: EdgeInsets.all(12),
                child: Image.asset(
                  Assets.images.message.path,
                  width: 22.w,
                  height: 18.h,
                ),
              ),
            ),

            SizedBox(width: 15),

            Row(
              children: [
                Image.asset(
                  Assets.images.analytics.path,
                  width: 18.w,
                  height: 18,
                ),
                SizedBox(width: 6),
                MdSnsText(
                  "ANALYTICS",
                  color: AppColors.white,
                  fontWeight: TextFontWeightVariant.h4,
                  variant: TextVariant.h3,
                ),
              ],
            ),

            SizedBox(width: 15),

            Container(width: 1.2, height: 24, color: Colors.white24),

            SizedBox(width: 10),
            Expanded(
              child: SizedBox(
                height: 50,
                child: SingleChildScrollView(
                  controller: _chipScrollController,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: sections.map((section) {
                      final id = section['id'] as String;
                      final isActive = _activeSection == id;

                      return GestureDetector(
                        onTap: () => _scrollToSection(id),
                        child: Container(
                          key: _chipKeys[id],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 6, // 👈 vertical padding kam
                          ),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: isActive
                                ? AppColors.bubbleColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: isActive
                                  ? Colors.transparent
                                  : AppColors.colorB2B2B7.withOpacity(0.4),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                section['image'],
                                width: 14,
                                height: 14,
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                section['title'],
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
              ),
            ),
          ],
        ),

        Expanded(
          child: CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Column(
                    key: ValueKey("$index"),
                    children: sections.map((section) {
                      final id = section['id'];
                      Widget content;
                      switch (id) {
                        case 'overview':
                          content = OverviewContentV1(
                            chatRouting: widget.chatRouting,
                            selectedStock: widget.selectedStock,
                          );
                          break;
                        case 'company':
                          content = CompanyContentV1(
                            chatRouting: widget.chatRouting,
                          );
                          break;
                        case 'financial':
                          content = FinancialTabV1(
                            symbol: widget.selectedStock.symbol,
                          );
                          break;
                        case 'earnings':
                          content = EarningContentV1(
                            chatRouting: widget.chatRouting,
                          );
                          break;
                        case 'analytics':
                          content = AnalysisContentV1(
                            chatRouting: widget.chatRouting,
                          );
                          break;
                        default:
                          content = SizedBox(height: 600);
                      }
                      return Container(key: _sectionKeys[id], child: content);
                    }).toList(),
                  );
                }, childCount: sections.length),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
