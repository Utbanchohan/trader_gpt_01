
import '../../shared/socket/model/stock_model.dart/stock_model.dart';

Stock emptyStock()
{

return Stock(
                avgVolume: 0,
                change: 0,
                changesPercentage: 0,
                dayHigh: 0,
                dayLow: 0,
                earningsAnnouncement: "",
                eps: 0,
                exchange: "",
                fiveDayTrend: [FiveDayTrend(data: [])],
                marketCap: 0,
                name: "",
                open: 0,
                pe: 0,
                previousClose: 0,
                price: 0,
                priceAvg200: 0,
                priceAvg50: 0,
                sharesOutstanding: 0,
                stockId: "",
                symbol: "",
                timestamp: 0,
                volume: 0,
                yearHigh: 0,
                yearLow: 0,
                logoUrl: "",
                type: "",
                count: 0,
                dateHours: "",
                ticks: 0,
                primaryLogoUrl: "",
                secondaryLogoUrl: "",
                tertiaryLogoUrl: "",
                status: "",
                updatedFrom: "",
                country: "",
                exchangeSortOrder: 0,
              );
}
