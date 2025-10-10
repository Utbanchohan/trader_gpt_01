import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
abstract class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    required int status,
    required String msg,
    Map<String, dynamic>? errors,
    required CompanyData data,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}

@freezed
abstract class CompanyData with _$CompanyData {
  const factory CompanyData({
    @JsonKey(name: "General") required General general,
  }) = _CompanyData;

  factory CompanyData.fromJson(Map<String, dynamic> json) =>
      _$CompanyDataFromJson(json);
}

@freezed
abstract class General with _$General {
  const factory General({
    int? IPODate,
    String? Symbol,
    String? Exchange,
    String? Country,
    String? FiscalYearEnd,
    String? Sector,
    String? Industry,
    String? Street,
    String? City,
    String? State,
    String? ZIP,
    double? MarketCapitalization,
    double? EBITDA,
    double? RevenueTTM,
    int? FullTimeEmployees,
    double? PercentInstitutions,
    String? Description,
    String? Address,
    String? Type,
    String? Name,
    String? CurrencyCode,
    String? CurrencyName,
    String? CurrencySymbol,
    String? CountryName,
    String? CountryISO,
    String? ISIN,
    String? LEI,
    String? PrimaryTicker,
    String? CUSIP,
    String? CIK,
    String? EmployerIdNumber,
    String? InternationalDomestic,
    String? GicSector,
    String? GicGroup,
    String? GicIndustry,
    String? GicSubIndustry,
    String? HomeCategory,
    bool? IsDelisted,
    String? Phone,
    String? WebURL,
    String? LogoURL,
    double? SharesOutstanding,
    double? FiftyTwoWeekLow,
    double? FiftyTwoWeekHigh,
    String? type,
    int? stock_type,
    List<Officer>? Officers,
  }) = _General;

  factory General.fromJson(Map<String, dynamic> json) =>
      _$GeneralFromJson(json);
}

@freezed
abstract class Officer with _$Officer {
  const factory Officer({
    String? Image,
    String? Name,
    String? Title,
    int? YearBorn,
  }) = _Officer;

  factory Officer.fromJson(Map<String, dynamic> json) =>
      _$OfficerFromJson(json);
}
