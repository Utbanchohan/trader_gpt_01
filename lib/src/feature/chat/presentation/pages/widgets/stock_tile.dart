import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trader_gpt/src/shared/socket/model/stock_model.dart/stock_model.dart';

import '../../../../../core/extensions/symbol_image.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../shared/widgets/text_widget.dart/dm_sns_text.dart';

class StockTile extends StatelessWidget {
  final Stock stock;
  final double change;
  const StockTile({super.key, required this.stock, required this.change});

  @override
  Widget build(BuildContext context) {
    Color getChangeColor(double? change) {
      if (change == null) return Colors.black;
      return change < 0 ? Colors.red : Colors.green;
    }

    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      leading: stock.symbol.isNotEmpty
          ? Container(
              width: 42,
              height: 41,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(
                //   image: NetworkImage(widget.stocks.logoUrl),
                //   fit: BoxFit.cover,
                // ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SvgPicture.network(
                  getItemImage(ImageType.stock, stock.symbol),
                  fit: BoxFit.cover,
                  placeholderBuilder: (context) =>
                      SizedBox(height: 41, width: 42, child: SizedBox()),
                ),
              ),
            )
          : Icon(Icons.safety_check, size: 40),
      title: MdSnsText(
        "#" + stock.symbol,

        color: AppColors.white,

        variant: TextVariant.h3,
        fontWeight: TextFontWeightVariant.h4,
      ),
      subtitle: MdSnsText(
        stock.companyName.isNotEmpty
            ? stock.companyName.split("-").first.trim()
            : "",
        variant: TextVariant.h4,
        fontWeight: TextFontWeightVariant.h4,

        color: AppColors.color677FA4,
      ),

      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MdSnsText(
            '\$${stock.price.toStringAsFixed(2)}',
            color: AppColors.white,

            variant: TextVariant.h3,
            fontWeight: TextFontWeightVariant.h4,
          ),
          SizedBox(height: 4),
          MdSnsText(
            '${change >= 0 ? '+' : ''}${change.toStringAsFixed(2)}%',

            color: getChangeColor(change),
            variant: TextVariant.h4,
            fontWeight: TextFontWeightVariant.h4,
          ),
        ],
      ),
    );
  }
}
