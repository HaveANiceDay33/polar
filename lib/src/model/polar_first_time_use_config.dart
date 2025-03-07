import 'package:json_annotation/json_annotation.dart';

part 'polar_device_first_time_use_config.g.dart';

/// config for the first time use of the Polar device
@JsonSerializable()
class PolarFirstTimeUseConfig {
  final Gender gender;
  final DateTime date;
  final double height;
  final double weight;
  final int maxHeartRate;
  final int vo2Max;
  final int restingHeartRate;
  final TrainingBackground trainingBackground;
  final String deviceTime;
  final TypicalDay typicalDay;
  final int sleepGoalMinutes;

  PolarFirstTimeUseConfig({
    this.gender = Gender.male,
    required this.date,
    this.height = 165,
    this.weight = 70,
    this.maxHeartRate = 220,
    this.vo2Max = 40,
    this.restingHeartRate = 60,
    this.trainingBackground = TrainingBackground.regular,
    this.deviceTime = '',
    this.typicalDay = TypicalDay.mostlySitting,
    this.sleepGoalMinutes = 480,
  });

  factory PolarFirstTimeUseConfig.fromJson(Map<String, dynamic> json) =>
      _$PolarFirstTimeUseConfigFromJson(json);

  Map<String, dynamic> toJson() => _$PolarFirstTimeUseConfigToJson(this);
}

enum Gender {
  male,
  female,
}

enum TrainingBackground {
  occasional(10),
  regular(20),
  frequent(30),
  heavy(40),
  semiPro(50),
  pro(60);

  final int value;
  const TrainingBackground(this.value);
}

enum TypicalDay {
  mostlySitting(1, 'Mostly Sitting'),
  mostlyStanding(2, 'Mostly Standing'),
  mostlyMoving(3, 'Mostly Moving');

  final int value;
  final String name;
  const TypicalDay(this.value, this.name);
}
