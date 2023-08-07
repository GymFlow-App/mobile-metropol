import 'package:metropol/core/utils/base_viewmodel.dart';
import 'package:metropol/core/utils/route_manager/data/service/route_manager.dart';
import 'package:metropol/product/domain/enum/category_enum.dart';

class DrawerViewModel extends BaseViewModel {
  CategoryEnum selectedCategory = CategoryEnum.home;

  void selectCategory(CategoryEnum category) {
    selectedCategory = category;
    RouteManager().back();
  }
}
