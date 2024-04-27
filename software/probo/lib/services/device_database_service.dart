import 'package:firebase_database/firebase_database.dart';
import 'package:probo/app/app.logger.dart';
import 'package:probo/models/devices.dart';
import 'package:stacked/stacked.dart';

const dbCode = '8eKyeqhbLnOFs4H4IzM6UvftIvo1';

class DeviceDatabaseService with ListenableServiceMixin {
  final FirebaseDatabase _db = FirebaseDatabase.instance;
  final log = getLogger('Devicedatabase');

  DeviceMovement? _node;
  DeviceMovement? get node => _node;

  void setUpNodeListening() {
    DatabaseReference startCountRef = _db.ref('/devices/$dbCode/data');

    try {
      startCountRef.onValue.listen((DatabaseEvent event) {
        if (event.snapshot.exists) {
          _node = DeviceMovement.fromMap(event.snapshot.value as Map);
          notifyListeners();
        }
      });
    } catch (e) {
      log.i(e.toString());
    }
  }

  void setDeviceData(DeviceMovement data) {
    DatabaseReference dataRef = _db.ref('/devices/$dbCode/data');

    dataRef.update(data.toJson());

    dataRef.update(data.toJson());
    print(data.direction);
  }

  void setAuto(DeviceMovement data) {
    DatabaseReference dataRef = _db.ref('/devices/$dbCode/data');
    dataRef.update(data.toJson());
  }
}
