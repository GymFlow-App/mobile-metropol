import 'package:metropol/core/init/injection_container.dart';
import 'package:metropol/product/viewmodel/drawer_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProvider {
  static List<SingleChildWidget> get providers => [
        ChangeNotifierProvider<DrawerViewModel>(
          create: (context) => serviceLocator<DrawerViewModel>(),
        ),
      ];
}
