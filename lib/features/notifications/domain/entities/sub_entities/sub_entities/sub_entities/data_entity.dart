
import '../../../../../data/models/sub_models/sub_models/sub_models/sub_models/details_model.dart';
import '../../../../../data/models/sub_models/sub_models/sub_models/sub_models/telematics_model.dart';

class DataEntity {
  String? title;
  String? message;
  String? icon;
  DetailsModel? details;
  TelematicsModel? telematics;

  DataEntity({this.title, this.message, this.icon, this.details, this.telematics});
}