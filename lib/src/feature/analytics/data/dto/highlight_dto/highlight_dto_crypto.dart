import 'package:freezed_annotation/freezed_annotation.dart';

part 'highlight_dto_crypto.freezed.dart';
part 'highlight_dto_crypto.g.dart';

@freezed
abstract class HighlightRequest with _$HighlightRequest {
  const factory HighlightRequest({
    required String symbol,
    required int limit,
    required String sort,
  }) = _HighlightRequest;

  factory HighlightRequest.fromJson(Map<String, dynamic> json) =>
      _$HighlightRequestFromJson(json);
}
