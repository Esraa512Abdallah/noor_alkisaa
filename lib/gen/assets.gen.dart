/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Ellipse 2296.png
  AssetGenImage get ellipse2296 =>
      const AssetGenImage('assets/images/Ellipse 2296.png');

  /// File path: assets/images/Icon_up_down.png
  AssetGenImage get iconUpDown =>
      const AssetGenImage('assets/images/Icon_up_down.png');

  /// File path: assets/images/Path.png
  AssetGenImage get path => const AssetGenImage('assets/images/Path.png');

  /// File path: assets/images/add-to-list.png
  AssetGenImage get addToList =>
      const AssetGenImage('assets/images/add-to-list.png');

  /// File path: assets/images/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.png');

  /// File path: assets/images/bill.png
  AssetGenImage get bill => const AssetGenImage('assets/images/bill.png');

  /// File path: assets/images/camera.png
  AssetGenImage get camera => const AssetGenImage('assets/images/camera.png');

  /// File path: assets/images/drawer_icon.png
  AssetGenImage get drawerIcon =>
      const AssetGenImage('assets/images/drawer_icon.png');

  /// File path: assets/images/edit.png
  AssetGenImage get edit => const AssetGenImage('assets/images/edit.png');

  /// File path: assets/images/editalt.png
  AssetGenImage get editalt => const AssetGenImage('assets/images/editalt.png');

  /// File path: assets/images/eye.png
  AssetGenImage get eye => const AssetGenImage('assets/images/eye.png');

  /// File path: assets/images/home-solid.png
  AssetGenImage get homeSolid =>
      const AssetGenImage('assets/images/home-solid.png');

  /// File path: assets/images/istockphoto.png
  AssetGenImage get istockphoto =>
      const AssetGenImage('assets/images/istockphoto.png');

  /// File path: assets/images/key-solid.png
  AssetGenImage get keySolid =>
      const AssetGenImage('assets/images/key-solid.png');

  /// File path: assets/images/layer2.png
  AssetGenImage get layer2 => const AssetGenImage('assets/images/layer2.png');

  /// File path: assets/images/layer3.png
  AssetGenImage get layer3 => const AssetGenImage('assets/images/layer3.png');

  /// File path: assets/images/location.png
  AssetGenImage get location =>
      const AssetGenImage('assets/images/location.png');

  /// File path: assets/images/logout.png
  AssetGenImage get logout => const AssetGenImage('assets/images/logout.png');

  /// File path: assets/images/mail.png
  AssetGenImage get mail => const AssetGenImage('assets/images/mail.png');

  /// File path: assets/images/map-marker.png
  AssetGenImage get mapMarker =>
      const AssetGenImage('assets/images/map-marker.png');

  /// File path: assets/images/notification-filled.png
  AssetGenImage get notificationFilled =>
      const AssetGenImage('assets/images/notification-filled.png');

  /// File path: assets/images/notification_ground.png
  AssetGenImage get notificationGround =>
      const AssetGenImage('assets/images/notification_ground.png');

  /// File path: assets/images/online.png
  AssetGenImage get online => const AssetGenImage('assets/images/online.png');

  /// File path: assets/images/payment.png
  AssetGenImage get payment => const AssetGenImage('assets/images/payment.png');

  /// File path: assets/images/phone_icon.png
  AssetGenImage get phoneIcon =>
      const AssetGenImage('assets/images/phone_icon.png');

  /// File path: assets/images/question.png
  AssetGenImage get question =>
      const AssetGenImage('assets/images/question.png');

  /// File path: assets/images/question1.png
  AssetGenImage get question1 =>
      const AssetGenImage('assets/images/question1.png');

  /// File path: assets/images/repeat-2.png
  AssetGenImage get repeat2 =>
      const AssetGenImage('assets/images/repeat-2.png');

  /// File path: assets/images/save-money.png
  AssetGenImage get saveMoney =>
      const AssetGenImage('assets/images/save-money.png');

  /// File path: assets/images/settings-solid.png
  AssetGenImage get settingsSolid =>
      const AssetGenImage('assets/images/settings-solid.png');

  /// File path: assets/images/shop.png
  AssetGenImage get shop => const AssetGenImage('assets/images/shop.png');

  /// File path: assets/images/share.png
  AssetGenImage get share => const AssetGenImage('assets/images/share.png');

  /// File path: assets/images/smartphone.png
  AssetGenImage get smartphone =>
      const AssetGenImage('assets/images/smartphone.png');

  /// File path: assets/images/store.png
  AssetGenImage get store => const AssetGenImage('assets/images/store.png');
}

class $AssetsLangGen {
  const $AssetsLangGen();

  /// File path: assets/lang/ar.json
  String get ar => 'assets/lang/ar.json';

  /// File path: assets/lang/en.json
  String get en => 'assets/lang/en.json';
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLangGen lang = $AssetsLangGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}
