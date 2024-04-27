import 'package:probo/app/app.bottomsheets.dart';
import 'package:probo/app/app.locator.dart';
import 'package:probo/app/app.logger.dart';
import 'package:probo/models/devices.dart';

import 'package:probo/services/device_database_service.dart';
import 'package:probo/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends ReactiveViewModel {
  final log = getLogger('HomeViewModel');
  final _deviceDatabaseService = locator<DeviceDatabaseService>();
  final _beltDatabaseService = locator<DeviceDatabaseService>();
  final _bottomSheetService = locator<BottomSheetService>();

  @override
  List<ListenableServiceMixin> get listenableServices =>
      [_deviceDatabaseService];

  bool _isAuto = true;
  bool get isAuto => _isAuto;

  void setDataIsAutomatic(bool value) {
    _deviceDatabaseService
        .setDeviceData(DeviceMovement(direction: null, isAuto: value));
  }

  void autoButton(bool value) {
    _isAuto = value;

    setDataIsAutomatic(_isAuto);

    notifyListeners();
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  void onModelReady() {
    try {
      _deviceDatabaseService.setDeviceData(DeviceMovement(
        direction: 's',
      ));

      notifyListeners();
    } catch (e) {
      log.i(e);
    }
  }

  DeviceMovement? get node => _deviceDatabaseService.node;

  void isDirection(String value) {
    _deviceDatabaseService.setDeviceData(DeviceMovement(
      direction: value,
    ));
  }
}
