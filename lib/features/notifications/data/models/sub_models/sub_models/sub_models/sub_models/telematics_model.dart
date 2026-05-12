
import '../../../../../../domain/entities/sub_entities/sub_entities/sub_entities/sub_models/telematics_entity.dart';

class TelematicsModel extends TelematicsEntity{
  int? crashId;
  String? latitude;
  String? longitude;
  String? speedBefore;
  String? severity;

  TelematicsModel(
      {this.crashId,
        this.latitude,
        this.longitude,
        this.speedBefore,
        this.severity});

  TelematicsModel.fromJson(Map<String, dynamic> json) {
    crashId = json['crash_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    speedBefore = json['speed_before'];
    severity = json['severity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['crash_id'] = this.crashId;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['speed_before'] = this.speedBefore;
    data['severity'] = this.severity;
    return data;
  }
}