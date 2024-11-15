import 'package:get_it/get_it.dart';

import '../view_models/padding_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<PaddingViewModel>(() => PaddingViewModel());
}
