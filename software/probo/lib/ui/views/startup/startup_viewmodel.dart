import 'package:probo/app/app.logger.dart';
import 'package:probo/services/device_database_service.dart';
import 'package:stacked/stacked.dart';
import 'package:probo/app/app.locator.dart';
import 'package:probo/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final log = getLogger('statup');
  final _dbService = locator<DeviceDatabaseService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    _dbService.setUpNodeListening();
    await Future.delayed(const Duration(seconds: 3));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic

    _navigationService.replaceWithHomeView();
  }
}
