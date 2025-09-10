// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Frame 1171275448.png
  AssetGenImage get frame1171275448 =>
      const AssetGenImage('assets/images/Frame 1171275448.png');

  /// File path: assets/images/Group 702.png
  AssetGenImage get group702 =>
      const AssetGenImage('assets/images/Group 702.png');

  /// File path: assets/images/Regenerate.png
  AssetGenImage get regenerate =>
      const AssetGenImage('assets/images/Regenerate.png');

  /// File path: assets/images/copy.png
  AssetGenImage get copy => const AssetGenImage('assets/images/copy.png');

  /// File path: assets/images/dislike.png
  AssetGenImage get dislike => const AssetGenImage('assets/images/dislike.png');

  /// File path: assets/images/lamp-charge.png
  AssetGenImage get lampCharge =>
      const AssetGenImage('assets/images/lamp-charge.png');

  /// File path: assets/images/like.png
  AssetGenImage get like => const AssetGenImage('assets/images/like.png');

  /// File path: assets/images/radar-2.png
  AssetGenImage get radar2 => const AssetGenImage('assets/images/radar-2.png');

  /// File path: assets/images/search-normal.png
  AssetGenImage get searchNormal =>
      const AssetGenImage('assets/images/search-normal.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    frame1171275448,
    group702,
    regenerate,
    copy,
    dislike,
    lampCharge,
    like,
    radar2,
    searchNormal,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
