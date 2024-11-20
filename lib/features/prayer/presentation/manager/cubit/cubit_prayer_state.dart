part of 'cubit_prayer_cubit.dart';


 class CubitPrayerState {}

class AllPrayerInitial extends CubitPrayerState {}

class AllPrayerLoading extends CubitPrayerState {}

class AllPrayerLoaddid extends CubitPrayerState {
final  PrayersModels prayer;

  AllPrayerLoaddid(this.prayer);
  
}

class AllPrayerError extends CubitPrayerState {
  final String errorMessage;

  AllPrayerError(this.errorMessage);
}
