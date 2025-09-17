import 'dart:async';
import 'dart:math';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trader_gpt/gen/assets.gen.dart';
import 'package:trader_gpt/src/core/theme/app_colors.dart';
import 'package:trader_gpt/src/services/sockets/socket_service.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';
import 'package:trader_gpt/src/shared/widgets/text_widget.dart/dm_sns_text.dart';

class NewConversation extends ConsumerStatefulWidget {
  NewConversation({super.key});

  @override
  ConsumerState<NewConversation> createState() => _NewConversationState();
}

List<double> generateStockLikeData({int count = 40, double start = 100}) {
  final random = Random();
  double value = start;
  return List.generate(count, (index) {
    value += (random.nextDouble() - 0.5) * 4; // change between -2 to +2
    return value;
  });
}

class _NewConversationState extends ConsumerState<NewConversation> {
  final SocketService socketService = SocketService();
  List<Stock> stocks = [];
  bool loading = true;

  Timer? pollingTimer;

  @override
  void initState() {
    super.initState();
    _connectSocket();
    _startPolling();
  }

  void _connectSocket() {
    socketService.connect();
    socketService.onStockUpdate((data) {
      updateStocks(data);
    });
  }

  void _startPolling() {
    pollingTimer = Timer.periodic(Duration(milliseconds: 100), (_) {
      socketService.fetchStocks((data) {
        updateStocks(data);
      });
    });
  }

  void updateStocks(List<dynamic> data) {
    final updatedStocks = data
        .map((item) => Stock.fromJson(Map<String, dynamic>.from(item)))
        .toList();

    setState(() {
      for (var updated in updatedStocks) {
        final index = stocks.indexWhere((s) => s.symbol == updated.symbol);
        if (index >= 0) {
          stocks[index] = updated;
        } else {
          stocks.add(updated);
        }
      }
      loading = false;
    });
  }

  Color _getChangeColor(double? change) {
    if (change == null) return Colors.black;
    return change < 0 ? Colors.red : Colors.green;
  }

  @override
  void dispose() {
    socketService.socket.dispose();
    pollingTimer?.cancel();
    super.dispose();
  }

  void selectStock(Stock symbol) {
    // Immediately return the selected symbol to previous screen
    context.pop(symbol);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,

        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.white),
          onPressed: () {
            context.pop();
          },
        ),

        title: Text(
          "Start New Conversation",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // 🔍 Search box
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Search here",
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                filled: true,
                fillColor: AppColors.color091224,
                suffixIcon: Icon(Icons.search, color: Colors.white54),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
stocks.length > 0
? 
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: GridView.builder(
                itemCount: stocks.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 cards per row
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.8.h,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      
                    },
                    child: _buildStockCard(
                      symbol: stocks[index].symbol,
                      company: stocks[index].name!,
                      price: "\$${stocks[index].price.toString()}",
                      change: stocks[index].changesPercentage!,
                      image: stocks[index].logoUrl!,
                    ),
                  );
                },
              ),
            ),
          ):MdSnsText(
            "Conversation Not Found"
          ),
        ],
      ),
    );
  }
}

Widget _buildStockCard({
  required String symbol,
  required String company,
  required String price,
  required double change,
  required String image,
}) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.color091224,
      borderRadius: BorderRadius.circular(16),
      border: Border.all(color: AppColors.color1B254B),
    ),
    padding: EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.network(
              image,

              // Assets.images.tesla.path,
              width: 26.w,
              height: 26.h,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 7.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MdSnsText(
                  symbol,

                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  size: 12,
                ),
                Container(
                  width: 50.w,
                  child: MdSnsText(
                    company.split("-").first.trim(),
                    color: Colors.white70,
                    maxLines: 1,
                    textOverflow: TextOverflow.ellipsis,
                    size: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10.h),
        MdSnsText(
          price,
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          size: 16,
        ),
        Row(
          children: [
            Icon(
              change.toString().contains("-")
                  ? Icons.arrow_drop_down
                  : Icons.arrow_drop_up,
              color: change.toString(). contains("-")
                  ? AppColors.redFF3B3B
                  : AppColors.color06D54E,
              size: 20,
            ),
            MdSnsText(
              change.toStringAsFixed(2),
              color: change.toString() .contains("-")
                  ? AppColors.redFF3B3B
                  : AppColors.color06D54E,
              size: 12,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),

        SizedBox(height: 4),
        // Mini Graph Placeholder
        SizedBox(
          width: 86.w,
          height: 15.h,
          child: Sparkline(
            data: generateStockLikeData(count: 50, start: 100),
            lineWidth: 2.0,
            lineColor: AppColors.color06D54E,
            pointsMode: PointsMode.none,
            pointColor: Colors.white,
            useCubicSmoothing: false,
            sharpCorners: true,
            fillMode: FillMode.below,
            fillGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.transparent],
            ),
          ),
        ),
      ],
    ),
  );
}
