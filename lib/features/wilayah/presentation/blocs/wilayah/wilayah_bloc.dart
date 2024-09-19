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
  }

  final ProvinceUsecase provinceUsecase;
  final CityUsecase cityUsecase;
}