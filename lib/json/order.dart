import 'package:flutter_demo/json/date_converter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable(includeIfNull: false)
class Order {

  @DateTimeConverter()
  DateTime? date;

  @DateTimeConverter()
  int time;

  Order(this.date, this.time);

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

}
