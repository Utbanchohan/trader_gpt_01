import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
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
  final void Function() onShowPressed;

  const BuildAnalyticTab({
    super.key,
    required this.chatRouting,
    required this.selectedStock,
    required this.onShowPressed,
  });

  @override
  State<BuildAnalyticTab> createState() => _BuildAnalyticTabState();
}

class _BuildAnalyticTabState extends State<BuildAnalyticTab> {
  String _activeSection = 'overview';

  final ScrollController _chipScrollController = ScrollController();
  final Map<String, GlobalKey> _chipKeys = {};

  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

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

    /// Create keys for chips
    for (var s in sections) {
      _chipKeys[s['id']] = GlobalKey();
    }

    itemPositionsListener.itemPositions.addListener(_updateActiveSection);
  }

  void _updateActiveSection() {
    final positions = itemPositionsListener.itemPositions.value;

    int? firstIndex = positions
        .where((pos) => pos.itemTrailingEdge > 0)
        .map((pos) => pos.index)
        .fold(null, (a, b) => a == null ? b : (a < b ? a : b));

    if (firstIndex != null && firstIndex < sections.length) {
      final id = sections[firstIndex]['id'];
      if (id != _activeSection) {
        setState(() {
          _activeSection = id;
        });

        /// ⭐ Auto scroll chip into view
        _scrollChipIntoView(id);
      }
    }
  }

  /// CHIP AUTO SCROLL FUNCTION
  void _scrollChipIntoView(String id) {
    final key = _chipKeys[id];
    if (key == null) return;

    final context = key.currentContext;
    if (context == null) return;

    final box = context.findRenderObject() as RenderBox;
    final position = box.localToGlobal(Offset.zero);
    final screenWidth = MediaQuery.of(context).size.width;

    final target =
        _chipScrollController.offset +
        position.dx -
        (screenWidth / 2) +
        (box.size.width / 2);

    _chipScrollController.animateTo(
      target.clamp(
        _chipScrollController.position.minScrollExtent,
        _chipScrollController.position.maxScrollExtent,
      ),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _scrollToSection(String id, Map<String, dynamic> section) {
    setState(() {
      _activeSection = id;
    });

    _scrollChipIntoView(id);

    final index = sections.indexOf(section);
    if (index != -1 && mounted) {
      itemScrollController.scrollTo(
        index: index,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  widget.onShowPressed();
                },
                child: Container(
                  width: 40.w,
                  height: 71.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.images.shapeRightSide.path),
                    ),
                  ),
                  padding: EdgeInsets.all(15),
                  child: Image.asset(
                    Assets.images.message.path,
                    width: 25.w,
                    height: 21.h,
                  ),
                ),
              ),

              SizedBox(width: 10),

              Row(
                children: [
                  Image.asset(
                    Assets.images.analytics.path,
                    width: 20.w,
                    height: 20,
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

              SizedBox(width: 10),

              Container(width: 1.2, height: 28, color: Colors.white24),

              SizedBox(width: 10),

              Expanded(
                child: SingleChildScrollView(
                  controller: _chipScrollController,
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: sections.map((section) {
                      final bool isActive = _activeSection == section['id'];

                      return GestureDetector(
                        onTap: () => _scrollToSection(section['id']!, section),
                        child: Container(
                          key: _chipKeys[section['id']], // ⭐ ADD KEY HERE
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 6,
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
              ),
            ],
          ),
        ),

        /// MAIN SCROLL CONTENT
        Expanded(
          child: ScrollablePositionedList.builder(
            itemCount: sections.length,
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            itemBuilder: (context, index) {
              final section = sections[index];
              final id = section['id'];

              switch (id) {
                case 'overview':
                  return OverviewContentV1(
                    chatRouting: widget.chatRouting,
                    selectedStock: widget.selectedStock,
                  );
                case 'company':
                  return CompanyContentV1(chatRouting: widget.chatRouting);
                case 'financial':
                  return FinancialTabV1(symbol: widget.selectedStock.symbol);
                case 'earnings':
                  return EarningContentV1(chatRouting: widget.chatRouting);
                case 'analytics':
                  return AnalysisContentV1(chatRouting: widget.chatRouting);
                default:
                  return SizedBox(height: 600);
              }
            },
          ),
        ),
      ],
    );
  }
}
