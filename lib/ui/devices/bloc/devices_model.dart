class DevicesModel {
  final num statusCode;
  final List<DevicesBody> body = [];

  DevicesModel(dynamic data) : statusCode = data['statusCode'] {
    for (var d in data['body']) body.add(DevicesBody(d));
  }
}

class DevicesBody {
  final DeviceLocation location;
  final String id;
  final String name;
  final String deviceId;
  final List<DataBody> dataBodies = [];

  DevicesBody(dynamic data)
      : location = DeviceLocation(data['location']),
        id = data['_id'],
        name = data['name'],
        deviceId = data['device_id'] {
    for (var d in data['data']) dataBodies.add(DataBody(d));
  }

  DevicesBody.initial()
      : location = DeviceLocation.initial(),
        id = '',
        name = '',
        deviceId = '';
}

class DataBody {
  final String dateTime;
  final num airTmp;
  final num airHum;
  final num airLux;
  final num soilMoist;
  final num soilEC;
  final num soilTmp;
  final num soilTDS;
  final num soilSalinity;
  final num soilEpsilon;
  final num soilN;
  final num soilP;
  final num soilK;
  final num soilPH;

  DataBody(dynamic data)
      : dateTime = data['dateTime'],
        airTmp = data['data']['AIR_TEMP'],
        airHum = data['data']['AIR_HUM'],
        airLux = data['data']['AIR_LUX'],
        soilMoist = data['data']['SOIL_MOISTURE'],
        soilEC = data['data']['SOIL_EC'],
        soilTmp = data['data']['SOIL_TEMP'],
        soilTDS = data['data']['SOIL_TDS'],
        soilSalinity = data['data']['SOIL_SALINITY'],
        soilEpsilon = data['data']['SOIL_EPSILON'],
        soilN = data['data']['SOIL_N'],
        soilP = data['data']['SOIL_P'],
        soilK = data['data']['SOIL_K'],
        soilPH = data['data']['SOIL_PH'];

  DataBody.initial()
      : dateTime = '',
        airTmp = 0,
        airHum = 0,
        airLux = 0,
        soilMoist = 0,
        soilEC = 0,
        soilTmp = 0,
        soilTDS = 0,
        soilSalinity = 0,
        soilEpsilon = 0,
        soilN = 0,
        soilP = 0,
        soilK = 0,
        soilPH = 0;
}

class DeviceLocation {
  final String type;
  final double lat;
  final double lon;

  DeviceLocation(var data)
      : type = data['type'],
        lat = (data['coordinates'][0] as num).toDouble(),
        lon = (data['coordinates'][1] as num).toDouble();

  DeviceLocation.initial()
      : type = '',
        lat = 0.0,
        lon = 0.0;
}
