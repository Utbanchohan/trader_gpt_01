class PriceUtils {
  static double? getChangesPercentage(
    double? livePrice,
    double? previousPrice,
  ) {
    if (livePrice == null || previousPrice == null || previousPrice == 0) {
      return null;
    }
    double change = ((livePrice - previousPrice) / previousPrice) * 100;
    return double.parse(change.toStringAsFixed(2)); // round to 2 decimals
  }
}
