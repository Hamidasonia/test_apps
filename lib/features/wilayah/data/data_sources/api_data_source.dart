import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_apps/core/core.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

abstract class WilayahApiDataSource {
  Future<List<ProvinceModel>> province();
  
  Future<List<CityModel>> city(String id);
}

class WilayahApiDataSourceImpl implements WilayahApiDataSource {
  WilayahApiDataSourceImpl(this.dio);

  final Dio dio;

  @override
  Future<List<ProvinceModel>> province() async {
    try {
      final response = await dio.get('provinces.json');

      debugPrint('$response');
      return List<ProvinceModel>.from(response.data
          .map((x) => ProvinceModel.fromJson(x)));
    } on DioException catch (e) {
      throw e.toServerException();
    } catch (e) {
      throw ErrorCodeException(message: e.toString());
    }
  }

  @override
  Future<List<CityModel>> city(String id) async {
    try {
      final response = await dio.get('regencies/$id.json');

      debugPrint('IKI LOH KOTA NYA $response');
      return List<CityModel>.from(response.data
          .map((x) => CityModel.fromJson(x)));
    } on DioException catch (e) {
      throw e.toServerException();
    } catch (e) {
      throw ErrorCodeException(message: e.toString());
    }
  }
}