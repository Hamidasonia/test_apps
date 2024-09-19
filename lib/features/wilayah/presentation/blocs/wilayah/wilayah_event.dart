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

class GetDistrictEvent extends WilayahEvent {}

class GetVillageEvent extends WilayahEvent {}
