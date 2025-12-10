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

  const BuildAnalyticTab({
    super.key,
    required this.chatRouting,
    required this.selectedStock,
  });

  @override
  State<BuildAnalyticTab> createState() => _BuildAnalyticTabState();
}

class _BuildAnalyticTabState extends State<BuildAnalyticTab> {
  String _activeSection = 'overview';
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

    itemPositionsListener.itemPositions.addListener(() {
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
        }
      }
    });
  }

  void _scrollToSection(String id, Map<String, dynamic> section) {
    setState(() {
      _activeSection = id;
    });
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
  void dispose() {
    itemPositionsListener.itemPositions.removeListener(() {});

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          child: Row(
            children: [
              /// LEFT SIDE ICON BUTTON (FIXED)
              InkWell(
                onTap: () {},
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

              Container(width: 1.2, height: 24, color: Colors.white24),

              SizedBox(width: 10),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: sections.map((section) {
                      final bool isActive = _activeSection == section['id'];

                      return GestureDetector(
                        onTap: () => _scrollToSection(section['id']!, section),
                        child: Container(
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
                  return Container(
                    // key: _sectionKeys[id],
                    child: OverviewContentV1(
                      chatRouting: widget.chatRouting,
                      selectedStock: widget.selectedStock,
                    ),
                  );
                case 'company':
                  return Container(
                    // key: _sectionKeys[id],
                    child: CompanyContentV1(chatRouting: widget.chatRouting),
                  );
                case 'financial':
                  return Container(
                    // key: _sectionKeys[id],
                    child: FinancialTabV1(symbol: widget.selectedStock.symbol),
                  );
                case 'earnings':
                  return Container(
                    // key: _sectionKeys[id],
                    child: EarningContentV1(chatRouting: widget.chatRouting),
                  );
                case 'analytics':
                  return Container(
                    // key: _sectionKeys[id],
                    child: AnalysisContentV1(chatRouting: widget.chatRouting),
                  );
                default:
                  return SizedBox(key: UniqueKey(), height: 600);
              }
            },
          ),
        ),

        // SizedBox(
        //   height: 60,
        //   child: SingleChildScrollView(
        //     controller: _chipScrollController,
        //     scrollDirection: Axis.horizontal,
        //     padding: const EdgeInsets.symmetric(horizontal: 8),
        //     child: Row(
        //       children: sections.map((section) {
        //         final id = section['id'] as String;
        //         final isActive = _activeSection == id;

        //         return GestureDetector(
        //           onTap: () => _scrollToSection(id),
        //           child: Container(
        //             key: _chipKeys[id],
        //             padding: const EdgeInsets.symmetric(
        //               horizontal: 14,
        //               vertical: 8,
        //             ),
        //             margin: const EdgeInsets.symmetric(
        //               horizontal: 6,
        //               vertical: 4,
        //             ),
        //             decoration: BoxDecoration(
        //               color: isActive
        //                   ? AppColors.bubbleColor
        //                   : Colors.transparent,
        //               borderRadius: BorderRadius.circular(50),
        //               border: Border.all(
        //                 color: isActive
        //                     ? Colors.transparent
        //                     : AppColors.colorB2B2B7.withOpacity(0.4),
        //               ),
        //             ),
        //             child: Row(
        //               children: [
        //                 Image.asset(section['image'], width: 14, height: 14),
        //                 SizedBox(width: 8.w),
        //                 Text(
        //                   section['title'],
        //                   style: TextStyle(
        //                     color: Colors.white,
        //                     fontWeight: isActive
        //                         ? FontWeight.bold
        //                         : FontWeight.normal,
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         );
        //       }).toList(),
        //     ),
        //   ),
        // ),
        // Expanded(
        //   child: CustomScrollView(
        //     controller: _scrollController,
        //     slivers: [
        //       SliverList(
        //         delegate: SliverChildBuilderDelegate((context, index) {
        //           final section = sections[index];
        //           final id = section['id'];

        //           Widget content;

        //           switch (id) {
        //             case 'overview':
        //               content = OverviewContentV1(
        //                 chatRouting: widget.chatRouting,
        //                 selectedStock: widget.selectedStock,
        //               );
        //               break;
        //             case 'company':
        //               content = CompanyContentV1(
        //                 chatRouting: widget.chatRouting,
        //               );
        //               break;
        //             case 'financial':
        //               content = FinancialTabV1(
        //                 symbol: widget.selectedStock.symbol,
        //               );
        //               break;
        //             case 'earnings':
        //               content = EarningContentV1(
        //                 chatRouting: widget.chatRouting,
        //               );
        //               break;
        //             case 'analytics':
        //               content = AnalysisContentV1(
        //                 chatRouting: widget.chatRouting,
        //               );
        //               break;
        //             default:
        //               content = SizedBox(height: 600);
        //           }

        //           return Container(key: _sectionKeys[id], child: content);
        //         }, childCount: sections.length),
        //       ),

        //       // SliverList(
        //       //   delegate: SliverChildBuilderDelegate((context, index) {
        //       //     return Column(
        //       //       key: ValueKey("$index"),
        //       //       children: sections.map((section) {
        //       //         final id = section['id'];
        //       //         Widget content;
        //       //         switch (id) {
        //       //           case 'overview':
        //       //             content = OverviewContentV1(
        //       //               chatRouting: widget.chatRouting,
        //       //               selectedStock: widget.selectedStock,
        //       //             );
        //       //             break;
        //       //           case 'company':
        //       //             content = CompanyContentV1(
        //       //               chatRouting: widget.chatRouting,
        //       //             );
        //       //             break;
        //       //           case 'financial':
        //       //             content = FinancialTabV1(
        //       //               symbol: widget.selectedStock.symbol,
        //       //             );
        //       //             break;
        //       //           case 'earnings':
        //       //             content = EarningContentV1(
        //       //               chatRouting: widget.chatRouting,
        //       //             );
        //       //             break;
        //       //           case 'analytics':
        //       //             content = AnalysisContentV1(
        //       //               chatRouting: widget.chatRouting,
        //       //             );
        //       //             break;
        //       //           default:
        //       //             content = SizedBox(height: 600);
        //       //         }
        //       //         return Container(key: _sectionKeys[id], child: content);
        //       //       }).toList(),
        //       //     );
        //       //   }, childCount: sections.length),
        //       // ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
