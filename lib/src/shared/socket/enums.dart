

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
  markNotificationRead('MARK_NOTIFICATION_READ'),
  newNotification('newNotification'),
  notificationRead('NOTIFICATION_READ'),
  notificationCountUpdate('NOTIFICATION_COUNT_UPDATE'),
  connectErrorUpper('CONNECT_ERROR'),
  errorUpper('ERROR'),
  getpopularnasdaqstocks('getpopularnasdaqstocks'),
  searchStockByKeyword('searchStockByKeyword'),
  popularNasdaqStocksUpdate('popularNasdaqStocksUpdate');

  final String value;
  const SocketEvents(this.value);

  /// Optional: reverse lookup
  static SocketEvents? fromValue(String value) {
    return SocketEvents.values.firstWhere((e) => e.value == value);
  }
}
