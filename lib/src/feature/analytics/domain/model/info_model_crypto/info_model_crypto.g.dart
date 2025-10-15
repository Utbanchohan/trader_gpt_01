// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model_crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InfoCryptoResponse _$InfoCryptoResponseFromJson(Map<String, dynamic> json) =>
    _InfoCryptoResponse(
      data: json['data'] == null
          ? null
          : InfoCryptoData.fromJson(json['data'] as Map<String, dynamic>),
      msg: json['msg'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$InfoCryptoResponseToJson(_InfoCryptoResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'msg': instance.msg,
      'status': instance.status,
      'errors': instance.errors,
    };

_InfoCryptoData _$InfoCryptoDataFromJson(Map<String, dynamic> json) =>
    _InfoCryptoData(
      marketData: json['market_data'] == null
          ? null
          : MarketData.fromJson(json['market_data'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      marketCap: json['market_cap'] == null
          ? null
          : MarketCap.fromJson(json['market_cap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InfoCryptoDataToJson(_InfoCryptoData instance) =>
    <String, dynamic>{
      'market_data': instance.marketData,
      'links': instance.links,
      'categories': instance.categories,
      'market_cap': instance.marketCap,
    };

_MarketData _$MarketDataFromJson(Map<String, dynamic> json) => _MarketData(
  high24h: json['high_24h'] == null
      ? null
      : CurrencyValue.fromJson(json['high_24h'] as Map<String, dynamic>),
  low24h: json['low_24h'] == null
      ? null
      : CurrencyValue.fromJson(json['low_24h'] as Map<String, dynamic>),
  atl: json['atl'] == null
      ? null
      : CurrencyValue.fromJson(json['atl'] as Map<String, dynamic>),
  ath: json['ath'] == null
      ? null
      : CurrencyValue.fromJson(json['ath'] as Map<String, dynamic>),
  maxHigh7d: json['max_high_7d'] as num?,
  minLow7d: json['min_low_7d'] as num?,
  open24h: json['open_24h'] as num?,
  priceChange24h: json['price_change_24h'] as num?,
  totalVolume: json['total_volume'] == null
      ? null
      : CurrencyValue.fromJson(json['total_volume'] as Map<String, dynamic>),
  maxSupply: json['max_supply'] as num?,
);

Map<String, dynamic> _$MarketDataToJson(_MarketData instance) =>
    <String, dynamic>{
      'high_24h': instance.high24h,
      'low_24h': instance.low24h,
      'atl': instance.atl,
      'ath': instance.ath,
      'max_high_7d': instance.maxHigh7d,
      'min_low_7d': instance.minLow7d,
      'open_24h': instance.open24h,
      'price_change_24h': instance.priceChange24h,
      'total_volume': instance.totalVolume,
      'max_supply': instance.maxSupply,
    };

_CurrencyValue _$CurrencyValueFromJson(Map<String, dynamic> json) =>
    _CurrencyValue(usd: json['usd'] as num?);

Map<String, dynamic> _$CurrencyValueToJson(_CurrencyValue instance) =>
    <String, dynamic>{'usd': instance.usd};

_Links _$LinksFromJson(Map<String, dynamic> json) => _Links(
  homepage: json['homepage'] as String?,
  whitepaper: json['whitepaper'] as String?,
  reposUrl: json['repos_url'] == null
      ? null
      : ReposUrl.fromJson(json['repos_url'] as Map<String, dynamic>),
  subredditUrl: json['subreddit_url'] as String?,
  community: json['cummunity'] == null
      ? null
      : Community.fromJson(json['cummunity'] as Map<String, dynamic>),
  blockchainSite: (json['blockchain_site'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$LinksToJson(_Links instance) => <String, dynamic>{
  'homepage': instance.homepage,
  'whitepaper': instance.whitepaper,
  'repos_url': instance.reposUrl,
  'subreddit_url': instance.subredditUrl,
  'cummunity': instance.community,
  'blockchain_site': instance.blockchainSite,
};

_ReposUrl _$ReposUrlFromJson(Map<String, dynamic> json) => _ReposUrl(
  github: (json['github'] as List<dynamic>?)?.map((e) => e as String).toList(),
  bitbucket: (json['bitbucket'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$ReposUrlToJson(_ReposUrl instance) => <String, dynamic>{
  'github': instance.github,
  'bitbucket': instance.bitbucket,
};

_Community _$CommunityFromJson(Map<String, dynamic> json) => _Community(
  facebookUrl: json['facebook_url'] as String?,
  twitterUrl: json['twitter_url'] as String?,
  telegramUrl: json['telegram_url'] as String?,
  bitcointalkThreadUrl: json['bitcointalk_thread_url'] as String?,
);

Map<String, dynamic> _$CommunityToJson(_Community instance) =>
    <String, dynamic>{
      'facebook_url': instance.facebookUrl,
      'twitter_url': instance.twitterUrl,
      'telegram_url': instance.telegramUrl,
      'bitcointalk_thread_url': instance.bitcointalkThreadUrl,
    };

_MarketCap _$MarketCapFromJson(Map<String, dynamic> json) => _MarketCap(
  maxSupply: json['max_supply'] as num?,
  circulatingSupply: json['circulating_supply'] as num?,
  totalSupply: json['total_supply'] as num?,
  volume24h: json['volume_24h'] as num?,
  marketCap: json['market_cap'] as num?,
  fullyDilutedMarketCap: json['fully_diluted_market_cap'] as num?,
  marketCapDominance: json['market_cap_dominance'] as num?,
);

Map<String, dynamic> _$MarketCapToJson(_MarketCap instance) =>
    <String, dynamic>{
      'max_supply': instance.maxSupply,
      'circulating_supply': instance.circulatingSupply,
      'total_supply': instance.totalSupply,
      'volume_24h': instance.volume24h,
      'market_cap': instance.marketCap,
      'fully_diluted_market_cap': instance.fullyDilutedMarketCap,
      'market_cap_dominance': instance.marketCapDominance,
    };
