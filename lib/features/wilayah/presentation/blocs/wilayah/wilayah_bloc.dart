import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_apps/core/core.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

part 'wilayah_event.dart';
part 'wilayah_state.dart';

class WilayahBloc extends Bloc<WilayahEvent, WilayahState> {
  WilayahBloc({
    required this.provinceUsecase,
    required this.cityUsecase,
    required this.districtUsecase,
    required this.villageUsecase,
}) :super(WilayahState.initial()) {

    on<GetProvinceEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: WilayahStatus.loadingProvince));
        final usecase = await provinceUsecase(const NoParams());
        usecase.fold((l) {
          emit(state.copyWith(
            failureProvince: l,
            status: WilayahStatus.failureProvince,
          ));
        }, (r) {
          emit(state.copyWith(
            province: r,
            status: WilayahStatus.successProvince
          ));
        });
      } catch (exception, stackTrace) {
        exception.recordError(
          RecordErrorParams(
            exception: exception,
            stackTrace: stackTrace,
          )
        );
      }
    });

    on<GetCityEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: WilayahStatus.loadingCity));
        final usecase = await cityUsecase(GetCityParams(id: event.id));
        usecase.fold((l) {
          emit(state.copyWith(
            failureCity: l,
            status: WilayahStatus.failureCity,
          ));
        }, (r) {
          emit(state.copyWith(
            city: r,
            status: WilayahStatus.successCity,
          ));
        });
      } catch (exception, stackTrace) {
        exception.recordError(
            RecordErrorParams(exception: exception, stackTrace: stackTrace));
      }
    });

    on<GetDistrictEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: WilayahStatus.loadingDistrict));
        final usecase = await districtUsecase(GetDistrictParams(id: event.id));
        usecase.fold((l) {
          emit(state.copyWith(
            failureDistrict: l,
            status: WilayahStatus.failureDistrict,
          ));
        }, (r) {
          emit(state.copyWith(
            district: r,
            status: WilayahStatus.successDistrict,
          ));
        });
      } catch (exception, stackTrace) {
        exception.recordError(
            RecordErrorParams(exception: exception, stackTrace: stackTrace));
      }
    });

    on<GetVillageEvent>((event, emit) async {
      try {
        emit(state.copyWith(status: WilayahStatus.loadingVillage));
        final usecase = await villageUsecase(GetVillageParams(id: event.id));
        usecase.fold((l) {
          emit(state.copyWith(
            failureVillage: l,
            status: WilayahStatus.failureVillage,
          ));
        }, (r) {
          emit(state.copyWith(
            village: r,
            status: WilayahStatus.successVillage,
          ));
        });
      } catch (exception, stackTrace) {
        exception.recordError(
            RecordErrorParams(exception: exception, stackTrace: stackTrace));
      }
    });
  }

  final ProvinceUsecase provinceUsecase;
  final CityUsecase cityUsecase;
  final DistrictUsecase districtUsecase;
  final VillageUsecase villageUsecase;
}