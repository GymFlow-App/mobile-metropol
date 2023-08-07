import 'dart:ui';

class AppColors {
  static final AppColors _instance = AppColors._init();
  AppColors._init();

  factory AppColors() {
    return _instance;
  }

  Color transparent = const Color(0x00000000);
  Color black = const Color(0xFF000000);
  Color dark = const Color(0xFF1C1C1C);
  Color white = const Color(0xFFFFFFFF);
  Color softWhite = const Color(0xFFDCDCDC);
  Color tertiary = const Color(0xFFEFEFF4);
  Color labelTertiary = const Color(0xFF3C3C43);
  Color orange = const Color(0xFFFF5B00);
  Color orange2 = const Color(0xFFF24B4B);
  Color bottomNavBarColor = const Color(0x001E1E1E);
  Color disableOrangeColor = const Color(0xFFFFB68D);
  Color backgroundSeconaryColor = const Color(0xFF1C1C1E);
  Color gray = const Color(0xFF8E8E93);
  Color darkGray2 = const Color(0xFF636366);
  Color gray2 = const Color(0xFFAEAEB2);
  Color gray3 = const Color(0xFF48484A);
  Color gray4 = const Color(0xFFD1D1D6);
  Color gray5 = const Color(0xFF9CA3AF);
  Color gray6 = const Color(0xFF2C2C2E);
  Color gray7 = const Color(0xFFC7C7CC);
  Color gray8 = const Color(0xFF3A3A3C);
  Color gray9 = const Color(0xFF77838F);
  Color gray10 = const Color(0xFF7A869A);
  Color gray11 = const Color(0xFFE5E5EA);
  Color lightGrey = const Color(0xFF7F909F);
  Color amber = const Color(0xFFFFAD00);
  Color gold = const Color(0xFFD09742);
  Color successGreen = const Color(0xFF21B33E);
  Color successGreen2 = const Color(0xFF34C759);
  Color green = const Color(0xFF42C458);
  Color deactiveIndicatorColor = const Color(0xFF515151);
  Color mainPassiveColor = const Color(0xFFD0A48C);
  Color red = const Color(0xFFFF1913);
}
