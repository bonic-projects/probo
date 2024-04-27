class DeviceMovement {
  String? direction;

  DateTime? lastSeen;
  bool? isAuto;

  //

  DeviceMovement({
    this.direction,
    this.lastSeen,
    this.isAuto,
  });

//
  factory DeviceMovement.fromMap(Map data) {
    return DeviceMovement(
      direction: data['direction'],
      lastSeen: DateTime.fromMillisecondsSinceEpoch(data['ts']),
      isAuto: data['isAuto'] ?? false,
    );
  }

  //
  Map<String, dynamic> toJson() =>
      {'direction': direction, 'ts': lastSeen, 'isAuto': isAuto};
}

/// Device Sensor Reading model
class DeviceReading {
  DateTime lastSeen;

  DeviceReading({
    required this.lastSeen,
  });

  factory DeviceReading.fromMap(Map data) {
    return DeviceReading(
      lastSeen: DateTime.fromMillisecondsSinceEpoch(data['ts']),
    );
  }
}
