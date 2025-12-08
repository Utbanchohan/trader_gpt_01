import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/extensions/empty_stock.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/crypto_items.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/analysis_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/company_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/earning_content.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/financial_tab.dart';
import 'package:trader_gpt/src/feature/analytics/Presentation/Pages/widgets/tabs_items/overview_content.dart';
import 'package:trader_gpt/src/feature/chat/domain/model/chat_stock_model.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import '../../domain/model/stock_price_model/stock_price_model.dart';
import '../provider/chart_data.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AnalyticsScreen extends ConsumerStatefulWidget {
  final ChatRouting? chatRouting;

  AnalyticsScreen({super.key, this.chatRouting});

  @override
  ConsumerState<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends ConsumerState<AnalyticsScreen>
    with TickerProviderStateMixin {
  StockPriceModel? stockPrices;
  bool analysisDataModelLoader = true;
  final ScrollOffsetController scrollOffsetController =
      ScrollOffsetController();
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create();

  //crypto Variable start

  final compactFormatter = NumberFormat.compact();

  //crypto Variable end

  ///dummy list scroller
  late ScrollController _scrollController;
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  final chartService = ChartService();

  final List<String> financialtabs = [
    "Summary",
    "Income Statement",
    "Balance Sheet",
    "Cash Flow",
  ];
  final List<String> categories = [
    "Overview",
    "Company",
    "Financial",
    "Earning",
    "Analysis",
  ];

  bool isTabSelected = true; // Default delivery tab selected

  void isToggle(bool value) {
    isTabSelected = value;
  }

  final List<String?> categoryImages = [
    Assets.images.categoryc1.path,
    Assets.images.c2.path,
    Assets.images.diagramc3.path,
    Assets.images.directboxNotifc4.path,
    Assets.images.categoryc1.path,
  ];

  Stock? selectedStock;

  final TextEditingController search = TextEditingController();
  int selectedIndex = -1;

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
    //raza: use getter if this is not changing on runtime
    selectedStock =
        widget.chatRouting != null && widget.chatRouting!.companyName.isNotEmpty
        ? Stock(
            companyName: widget.chatRouting!.companyName,
            pctChange: widget.chatRouting!.changePercentage,
            exchange: "",
            fiveDayTrend: [widget.chatRouting!.trendChart],
            marketCap: 0,
            previousClose: 0.0,
            price: widget.chatRouting!.price,
            stockId: widget.chatRouting!.stockid,
            symbol: widget.chatRouting!.symbol,
            type: widget.chatRouting!.type,
          )
        : emptyStock();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,

        body: SafeArea(
          top: true,
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     InkWell(
              //       onTap: () {
              //         context.pushNamed(
              //           AppRoutes.swipeScreen.name,
              //           extra: {
              //             "chatRouting": widget.chatRouting,
              //             "initialIndex": 1,
              //           },
              //         );
              //       },
              //       child: Container(
              //         width: 40.w,
              //         height: 71.h,
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //             image: AssetImage(Assets.images.shapeRightSide.path),
              //           ),
              //         ),
              //         padding: EdgeInsets.all(15),
              //         child: Image.asset(
              //           Assets.images.message.path,
              //           width: 25.w,
              //           height: 21.h,
              //         ),
              //       ),
              //     ),

              //     Expanded(
              //       child: Container(
              //         margin: EdgeInsets.only(right: 30),
              //         child: Center(
              //           child: Row(
              //             mainAxisSize: MainAxisSize.min,
              //             children: [
              //               Image.asset(
              //                 "assets/images/analytics.png",
              //                 width: 20,
              //                 height: 20,
              //               ),
              //               SizedBox(width: 6),
              //               MdSnsText(
              //                 "ANALYTICS",
              //                 color: AppColors.white,
              //                 fontWeight: TextFontWeightVariant.h4,
              //                 variant: TextVariant.h3,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Top tabs (Analytics / History)
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              //   child: TabBar(
              //     indicator: BoxDecoration(
              //       color: AppColors.bubbleColor,
              //       borderRadius: BorderRadius.circular(8),
              //     ),
              //     labelColor: AppColors.primaryColor,
              //     unselectedLabelColor: AppColors.white,
              //     indicatorPadding: EdgeInsets.zero,
              //     tabs: [
              //       Tab(
              //         child: Text(
              //           "Analytics",
              //           style: TextStyle(fontWeight: FontWeight.w600),
              //         ),
              //       ),
              //       Tab(
              //         child: Text(
              //           "History",
              //           style: TextStyle(fontWeight: FontWeight.w600),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // Tab content (enable swipe)
              Expanded(
                child:
                    //  TabBarView(
                    //   physics: BouncingScrollPhysics(),
                    //   children: [
                    widget.chatRouting != null &&
                        widget.chatRouting!.type.toLowerCase() == "crypto"
                    ? CryptoItems(
                        chatRouting: widget.chatRouting!,
                        selectedStock: selectedStock!,
                      )
                    :
                      //raza: create statefull page for analytics tab and do the everythign there
                      _buildAnalyticsTab(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Analytics Tab Content
  Widget _buildAnalyticsTab() {
    //raza: if its only using in app bar no need to use variable
    final double chipRowHeight = 60;

    return CustomScrollView(
      key: _scrollableKey,
      controller: _scrollController,
      // physics: BouncingScrollPhysics(),
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: _ChipsHeaderDelegate(
            minExtent: chipRowHeight,
            maxExtent: chipRowHeight,
            sections: sections,
            activeSectionIdGetter: () => _activeSection,
            chipKeys: _chipKeys,
            onTap: (id, section) => _scrollActiveChipIntoView(id),
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
                        chatRouting: widget.chatRouting!,
                        selectedStock: selectedStock!,
                      ),
                );

              case "company":
                return Container(
                  key: _keys[id],
                  child: CompanyContentV1(chatRouting: widget.chatRouting!),
                );

              case "financial":
                return Container(
                  key: _keys[id],
                  child: FinancialTabV1(symbol: selectedStock!.symbol),
                );

              case "earnings":
                return Container(
                  key: _keys[id],
                  child: EarningContentV1(chatRouting: widget.chatRouting!),
                );

              case "analytics":
                return Container(
                  key: _keys[id],
                  child: AnalysisContentV1(chatRouting: widget.chatRouting!),
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
  final void Function(String id, Map<String, dynamic> section) onTap;

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
              //raza: why return id , section already have this is
              onTap: () => onTap(id, section),
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
