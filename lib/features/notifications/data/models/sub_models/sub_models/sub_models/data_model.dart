
import 'package:black_box/features/notifications/data/models/sub_models/sub_models/sub_models/sub_models/details_model.dart';
import 'package:black_box/features/notifications/data/models/sub_models/sub_models/sub_models/sub_models/telematics_model.dart';

import '../../../../../domain/entities/sub_entities/sub_entities/sub_entities/data_entity.dart';

class DataModel extends DataEntity{
  String? title;
  String? message;
  String? icon;
  DetailsModel? details;
  TelematicsModel? telematics;

  DataModel({this.title, this.message, this.icon, this.details, this.telematics});

  DataModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    message = json['message'];
    icon = json['icon'];
    details =
    json['details'] != null ? new DetailsModel.fromJson(json['details']) : null;
    telematics = json['telematics'] != null
        ? new TelematicsModel.fromJson(json['telematics'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['message'] = this.message;
    data['icon'] = this.icon;
    if (this.details != null) {
      data['details'] = this.details!.toJson();
    }
    if (this.telematics != null) {
      data['telematics'] = this.telematics!.toJson();
    }
    return data;
  }
}