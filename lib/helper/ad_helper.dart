import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-5880750024200016/9440764418';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else {
      throw new UnsupportedError('Unsupported platform');
    }
  }

  static String? get interestitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-5880750024200016/9440764418';
    }
  }

  static BannerAdListener bannerAdListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('Ad loaded'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint("Ad failed $error");
    },
    onAdOpened: (ad) => debugPrint("ad opened"),
    onAdClosed: (ad) => debugPrint("ad closed"),
  );
}
