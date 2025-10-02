import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_dto.freezed.dart';
part 'overview_dto.g.dart';

@freezed
abstract class SymbolDto with _$SymbolDto {
  const factory SymbolDto({required String symbol}) = _SymbolDto;

  factory SymbolDto.fromJson(Map<String, dynamic> json) =>
      _$SymbolDtoFromJson(json);
}
