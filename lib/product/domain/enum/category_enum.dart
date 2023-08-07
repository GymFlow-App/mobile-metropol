import 'package:flutter/material.dart';
import 'package:metropol/core/constants/asset_paths.dart';
import 'package:metropol/feature/home/view/body/home_body.dart';

enum CategoryEnum {
  home("Ana Sayfa"),
  industry("Sanayi"),
  business("İş Dünyası"),
  economy("Ekonomi"),
  news("Haberler"),
  program("Program"),
  streaming("Yayın Akışı");

  final String name;
  const CategoryEnum(this.name);
}

extension CategoryEnumExtension on CategoryEnum {
  String get background {
    return switch (this) {
      CategoryEnum.home => AssetPaths().homeBackgroundJPG,
      CategoryEnum.industry => AssetPaths().homeBackgroundJPG,
      CategoryEnum.business => AssetPaths().homeBackgroundJPG,
      CategoryEnum.economy => AssetPaths().homeBackgroundJPG,
      CategoryEnum.news => AssetPaths().homeBackgroundJPG,
      CategoryEnum.program => AssetPaths().homeBackgroundJPG,
      CategoryEnum.streaming => AssetPaths().homeBackgroundJPG,
    };
  }

  Widget get child {
    return switch (this) {
      CategoryEnum.home => const HomeBody(),
      CategoryEnum.industry => const HomeBody(),
      CategoryEnum.business => const HomeBody(),
      CategoryEnum.economy => const HomeBody(),
      CategoryEnum.news => const HomeBody(),
      CategoryEnum.program => const HomeBody(),
      CategoryEnum.streaming => const HomeBody(),
    };
  }
}
