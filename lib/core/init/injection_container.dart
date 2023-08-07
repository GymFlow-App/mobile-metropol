import 'package:get_it/get_it.dart';
import 'package:metropol/product/viewmodel/drawer_viewmodel.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerLazySingleton<DrawerViewModel>(() => DrawerViewModel());
}
