part of 'wilayah_bloc.dart';

enum WilayahStatus {
  initial,
  loadingProvince,
  loadingCity,
  loadingDistrict,
  loadingVillage,
  failureProvince,
  failureCity,
  failureDistrict,
  failureVillage,
  successProvince,
  successCity,
  successDistrict,
  successVillage,
}

class WilayahState extends Equatable {
  const WilayahState({
    this.failureCity,
    this.failureDistrict,
    this.failureProvince,
    this.failureVillage,
    this.province,
    this.city,
    this.district,
    this.village,
    this.status = WilayahStatus.initial,
  });

  factory WilayahState.initial() {
    return const WilayahState();
  }

  final WilayahStatus status;
  final Failure? failureProvince;
  final Failure? failureCity;
  final Failure? failureDistrict;
  final Failure? failureVillage;
  final List<Province>? province;
  final List<City>? city;
  final List<District>? district;
  final List<Village>? village;

  WilayahState copyWith({
    WilayahStatus? status,
    Failure? failureProvince,
    Failure? failureCity,
    Failure? failureDistrict,
    Failure? failureVillage,
    List<Province>? province,
    List<City>? city,
    List<District>? district,
    List<Village>? village,
  }) {
    return WilayahState(
      failureCity: failureCity ?? this.failureCity,
      failureDistrict: failureDistrict ?? this.failureDistrict,
      failureProvince: failureProvince ?? this.failureProvince,
      failureVillage: failureVillage ?? this.failureVillage,
      province: province ?? this.province,
      city: city ?? this.city,
      district: district ?? this.district,
      village: village ?? this.village,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        failureProvince,
        failureCity,
        failureDistrict,
        failureVillage,
        province,
        city,
        district,
        village,
      ];
}
