class AssetPaths {
  static final AssetPaths _instance = AssetPaths._init();
  AssetPaths._init();

  factory AssetPaths() {
    return _instance;
  }

  String _toSVG(String name) => 'assets/image/svg/$name.svg';
  String _toPNG(String name) => 'assets/image/png/$name.png';
  String _toJPG(String name) => 'assets/image/jpg/$name.jpg';

  String get appLogoJPG => _toJPG("app_logo");
  String get posterJPG => _toJPG("poster");
  String get homeBackgroundJPG => _toJPG("home_bg");
}
