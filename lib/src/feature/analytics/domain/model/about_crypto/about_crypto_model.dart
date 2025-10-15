import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_crypto_model.freezed.dart';
part 'about_crypto_model.g.dart';

@freezed
abstract class AboutCryptoModel with _$AboutCryptoModel {
  const factory AboutCryptoModel({
    required CryptoData? data,
    required String? msg,
    required int? status,
    required dynamic errors,
  }) = _AboutCryptoModel;

  factory AboutCryptoModel.fromJson(Map<String, dynamic> json) =>
      _$AboutCryptoModelFromJson(json);
}

@freezed
abstract class CryptoData with _$CryptoData {
  const factory CryptoData({
    required Description? description,
    required String? name,
  }) = _CryptoData;

  factory CryptoData.fromJson(Map<String, dynamic> json) =>
      _$CryptoDataFromJson(json);
}

@freezed
abstract class Description with _$Description {
  const factory Description({required String? en}) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}
