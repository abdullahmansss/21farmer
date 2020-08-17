class FarmsModel {
  final int statusCode;
  final List<FarmBody> farms = [];

  FarmsModel(var data) : statusCode = data['statusCode'] {
    for (var d in data['body']) farms.add(FarmBody(d));
  }
}

class FarmBody {
  final Location location;
  final String status;
  final String id;
  final String name;
  final String userId;
  final List<FieldBody> fields = [];
  final int v;

  FarmBody(var data)
      : location = Location(data['location']),
        status = data['status'],
        id = data['_id'],
        name = data['name'],
        userId = data['user_id'],
        v = data['__v'] {
    for (var d in data['fields']) fields.add(FieldBody(d));
  }

  FarmBody.initial()
      : location = Location.initial(),
        status = '',
        id = '',
        name = '',
        userId = '',
        v = -1;
}

class FieldBody {
  final Location location;
  final String status;
  final List<Gateway> gateways = [];
  final String id;
  final String name;
  final String crop;
  final String date;

  FieldBody(var data)
      : location = Location(data['coordinate_points']),
        status = data['status'],
        id = data['_id'],
        name = data['field_name'],
        crop = data['crop'],
        date = data['createdAt'] {
//    for (var d in data['gateways']) gateways.add(Gateway(d));
  }
}

class Gateway {
  Gateway(var data);
}

class Location {
  final String type;
  final List<Coordinate> coordinates = [];

  Location(var data) : type = data['type'] {
    for (var d in data['coordinates'][0]) coordinates.add(Coordinate(d));
  }

  Location.initial() : type = '';
}

class Coordinate {
  final double lat;
  final double lon;

  Coordinate(var data)
      : lat = (data[0] as num).toDouble(),
        lon = (data[1] as num).toDouble();

  Coordinate.custom(num lat, num lon)
      : lat = lat.toDouble(),
        lon = lon.toDouble();
}
