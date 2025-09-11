

enum SocketEvents {
  transport('websocket'),
  connect('connect'),
  disconnect('disconnect'),
  reconnect('reconnect'),
  reconnectAttempt('reconnect_attempt'),
  reconnectError('reconnect_error'),
  reconnectFailed('reconnect_failed'),
  connectError('connect_error'),
  error('error'),
  priceUpdate('priceupdate'),
  getStocksData('getstocksdata'),
  ping('ping'),
  portfolioSummaryUpdate('portfolio-summary-update'),
  portfolioCardUpdateUnsubscribe('portfolio-card-update-unsubscribe'),
  portfolioHoldingsUpdate('portfolio-holdings-update'),
  portfolioHoldingsUpdateUnsubscribe('portfolio-holdings-update-unsubscribe'),
  portfolioSummaryUpdateUnsubscribe('portfolio-summary-update-unsubscribe'),
  searchStockByKeyword('searchStockByKeyword'),
  searchStockByKeywordAndMarket('searchStockByKeywordAndMarket'),
  getPredictionsByID('getPredictionsByID'),
  users('users'),
  portfolioCardUpdate('portfolio-card-update'),
  portfolioOverviewUpdate('portfolio-overview-update'),
  portfolioOverviewUpdateUnsubscribe('portfolio-overview-update-unsubscribe'),
  markNotificationRead('MARK_NOTIFICATION_READ'),
  newNotification('newNotification'),
  notificationRead('NOTIFICATION_READ'),
  notificationCountUpdate('NOTIFICATION_COUNT_UPDATE'),
  connectErrorUpper('CONNECT_ERROR'),
  errorUpper('ERROR');

  final String value;
  const SocketEvents(this.value);

  /// Optional: reverse lookup
  static SocketEvents? fromValue(String value) {
    return SocketEvents.values.firstWhere((e) => e.value == value);
  }
}
