// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyModel _$CompanyModelFromJson(Map<String, dynamic> json) =>
    _CompanyModel(
      status: (json['status'] as num).toInt(),
      msg: json['msg'] as String,
      errors: json['errors'] as Map<String, dynamic>?,
      data: CompanyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompanyModelToJson(_CompanyModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'errors': instance.errors,
      'data': instance.data,
    };

_CompanyData _$CompanyDataFromJson(Map<String, dynamic> json) => _CompanyData(
  general: General.fromJson(json['General'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CompanyDataToJson(_CompanyData instance) =>
    <String, dynamic>{'General': instance.general};

_General _$GeneralFromJson(Map<String, dynamic> json) => _General(
  IPODate: (json['IPODate'] as num?)?.toInt(),
  Symbol: json['Symbol'] as String?,
  Exchange: json['Exchange'] as String?,
  Country: json['Country'] as String?,
  FiscalYearEnd: json['FiscalYearEnd'] as String?,
  Sector: json['Sector'] as String?,
  Industry: json['Industry'] as String?,
  Street: json['Street'] as String?,
  City: json['City'] as String?,
  State: json['State'] as String?,
  ZIP: json['ZIP'] as String?,
  MarketCapitalization: (json['MarketCapitalization'] as num?)?.toDouble(),
  EBITDA: (json['EBITDA'] as num?)?.toDouble(),
  RevenueTTM: (json['RevenueTTM'] as num?)?.toDouble(),
  FullTimeEmployees: (json['FullTimeEmployees'] as num?)?.toInt(),
  PercentInstitutions: (json['PercentInstitutions'] as num?)?.toDouble(),
  Description: json['Description'] as String?,
  Address: json['Address'] as String?,
  Type: json['Type'] as String?,
  Name: json['Name'] as String?,
  CurrencyCode: json['CurrencyCode'] as String?,
  CurrencyName: json['CurrencyName'] as String?,
  CurrencySymbol: json['CurrencySymbol'] as String?,
  CountryName: json['CountryName'] as String?,
  CountryISO: json['CountryISO'] as String?,
  ISIN: json['ISIN'] as String?,
  LEI: json['LEI'] as String?,
  PrimaryTicker: json['PrimaryTicker'] as String?,
  CUSIP: json['CUSIP'] as String?,
  CIK: json['CIK'] as String?,
  EmployerIdNumber: json['EmployerIdNumber'] as String?,
  InternationalDomestic: json['InternationalDomestic'] as String?,
  GicSector: json['GicSector'] as String?,
  GicGroup: json['GicGroup'] as String?,
  GicIndustry: json['GicIndustry'] as String?,
  GicSubIndustry: json['GicSubIndustry'] as String?,
  HomeCategory: json['HomeCategory'] as String?,
  IsDelisted: json['IsDelisted'] as bool?,
  Phone: json['Phone'] as String?,
  WebURL: json['WebURL'] as String?,
  LogoURL: json['LogoURL'] as String?,
  SharesOutstanding: (json['SharesOutstanding'] as num?)?.toDouble(),
  FiftyTwoWeekLow: (json['FiftyTwoWeekLow'] as num?)?.toDouble(),
  FiftyTwoWeekHigh: (json['FiftyTwoWeekHigh'] as num?)?.toDouble(),
  type: json['type'] as String?,
  stock_type: (json['stock_type'] as num?)?.toInt(),
  Officers: (json['Officers'] as List<dynamic>?)
      ?.map((e) => Officer.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GeneralToJson(_General instance) => <String, dynamic>{
  'IPODate': instance.IPODate,
  'Symbol': instance.Symbol,
  'Exchange': instance.Exchange,
  'Country': instance.Country,
  'FiscalYearEnd': instance.FiscalYearEnd,
  'Sector': instance.Sector,
  'Industry': instance.Industry,
  'Street': instance.Street,
  'City': instance.City,
  'State': instance.State,
  'ZIP': instance.ZIP,
  'MarketCapitalization': instance.MarketCapitalization,
  'EBITDA': instance.EBITDA,
  'RevenueTTM': instance.RevenueTTM,
  'FullTimeEmployees': instance.FullTimeEmployees,
  'PercentInstitutions': instance.PercentInstitutions,
  'Description': instance.Description,
  'Address': instance.Address,
  'Type': instance.Type,
  'Name': instance.Name,
  'CurrencyCode': instance.CurrencyCode,
  'CurrencyName': instance.CurrencyName,
  'CurrencySymbol': instance.CurrencySymbol,
  'CountryName': instance.CountryName,
  'CountryISO': instance.CountryISO,
  'ISIN': instance.ISIN,
  'LEI': instance.LEI,
  'PrimaryTicker': instance.PrimaryTicker,
  'CUSIP': instance.CUSIP,
  'CIK': instance.CIK,
  'EmployerIdNumber': instance.EmployerIdNumber,
  'InternationalDomestic': instance.InternationalDomestic,
  'GicSector': instance.GicSector,
  'GicGroup': instance.GicGroup,
  'GicIndustry': instance.GicIndustry,
  'GicSubIndustry': instance.GicSubIndustry,
  'HomeCategory': instance.HomeCategory,
  'IsDelisted': instance.IsDelisted,
  'Phone': instance.Phone,
  'WebURL': instance.WebURL,
  'LogoURL': instance.LogoURL,
  'SharesOutstanding': instance.SharesOutstanding,
  'FiftyTwoWeekLow': instance.FiftyTwoWeekLow,
  'FiftyTwoWeekHigh': instance.FiftyTwoWeekHigh,
  'type': instance.type,
  'stock_type': instance.stock_type,
  'Officers': instance.Officers,
};

_Officer _$OfficerFromJson(Map<String, dynamic> json) => _Officer(
  Image: json['Image'] as String?,
  Name: json['Name'] as String?,
  Title: json['Title'] as String?,
  YearBorn: (json['YearBorn'] as num?)?.toInt(),
);

Map<String, dynamic> _$OfficerToJson(_Officer instance) => <String, dynamic>{
  'Image': instance.Image,
  'Name': instance.Name,
  'Title': instance.Title,
  'YearBorn': instance.YearBorn,
};
