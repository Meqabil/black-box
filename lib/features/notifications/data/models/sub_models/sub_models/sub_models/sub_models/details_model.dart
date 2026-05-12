
import '../../../../../../domain/entities/sub_entities/sub_entities/sub_entities/sub_models/details_entity.dart';

class DetailsModel extends DetailsEntity{
  String? driverName;
  String? vehicleInfo;
  String? reason;
  String? time;
  String? date;

  DetailsModel({this.driverName, this.vehicleInfo, this.reason, this.time, this.date});

  DetailsModel.fromJson(Map<String, dynamic> json) {
    driverName = json['driver_name'];
    vehicleInfo = json['vehicle_info'];
    reason = json['reason'];
    time = json['time'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['driver_name'] = this.driverName;
    data['vehicle_info'] = this.vehicleInfo;
    data['reason'] = this.reason;
    data['time'] = this.time;
    data['date'] = this.date;
    return data;
  }
}