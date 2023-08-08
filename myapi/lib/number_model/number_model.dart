import 'package:json_annotation/json_annotation.dart';

part 'number_model.g.dart';

@JsonSerializable()
class NumberModel {
  @JsonKey(name: "text")
  String? text;
  @JsonKey(name: "number")
  int? number;
  @JsonKey(name: "found")
  bool? found;
  @JsonKey(name: "type")
  String? type;

  NumberModel({this.text, this.number, this.found, this.type});

  factory NumberModel.fromJson(Map<String, dynamic> json) {
    return _$NumberModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberModelToJson(this);
}
