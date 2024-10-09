class MyKey {
  static String api_key = '26e438ca981a3096e15eb68638e57b41';
}

class AssetCustom {
  static const linkAsset = 'assets/icons/';
  static String getLinkImg(String name) =>
      '$linkAsset${name.replaceAll(' ', '').toLowerCase()}.png';
}
