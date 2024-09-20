part of 'wilayah_bloc.dart';

sealed class WilayahEvent extends Equatable {
  const WilayahEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetProvinceEvent extends WilayahEvent {}

class GetCityEvent extends WilayahEvent {
  final String id;

  const GetCityEvent({required this.id});
}

class GetDistrictEvent extends WilayahEvent {
  final String id;

  const GetDistrictEvent({required this.id});
}

class GetVillageEvent extends WilayahEvent {
  final String id;

  const GetVillageEvent({required this.id});
}
