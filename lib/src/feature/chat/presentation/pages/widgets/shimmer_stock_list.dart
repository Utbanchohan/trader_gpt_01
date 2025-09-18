import 'package:flutter/material.dart';

import '../../../../new_conversations/presentation/pages/widget/shimmer_widget.dart';

class ShimmerStockList extends StatelessWidget {
  const ShimmerStockList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 5,
        ),
        leading: shimmerBox(width: 50, height: 50, radius: 0),
        title: 
       shimmerBox(width: 50, height: 16), 
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: shimmerBox(width: 100, height: 12), 
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            shimmerBox(width: 50, height: 14), 
            const SizedBox(height: 4),
            shimmerBox(width: 40, height: 12), 
          ],
        ),
      ),
    );
  }
}