import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:gap/gap.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dropDownKey = GlobalKey<DropdownSearchState>();
    final dropDownKeyCity = GlobalKey<DropdownSearchState>();
    final dropDownKeyDistrict = GlobalKey<DropdownSearchState>();
    final dropDownKeyVillage = GlobalKey<DropdownSearchState>();

    return BlocBuilder<WilayahBloc, WilayahState>(builder: (context, state) {
      return GestureDetector(
        onTap: () {
          if (dropDownKey.currentState?.isFocused == true ||
              dropDownKeyCity.currentState?.isFocused == true ||
              dropDownKeyDistrict.currentState?.isFocused == true ||
              dropDownKeyVillage.currentState?.isFocused == true) {
            dropDownKey.currentState?.closeDropDownSearch();
            dropDownKeyCity.currentState?.closeDropDownSearch();
            dropDownKeyVillage.currentState?.closeDropDownSearch();
            dropDownKeyDistrict.currentState?.closeDropDownSearch();
          }
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 16,
            ),
            child: state.status == WilayahStatus.loadingProvince
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.black))
                : Column(
                    children: [
                      const Gap(40),
                      DropdownSearch<Province>(
                        itemAsString: (Province p) => p.name,
                        key: dropDownKey,
                        selectedItem: state.province?.first,
                        items: state.province ?? [],
                        popupProps: PopupProps.bottomSheet(
                          showSearchBox: true,
                          bottomSheetProps: BottomSheetProps(
                            backgroundColor: Colors.black.withOpacity(.2),
                          ),
                        ),
                        dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration:
                              InputDecoration(labelText: "Pilih Provinsi"),
                        ),
                        onChanged: (Province? selectedProvince) {
                          if (selectedProvince != null) {
                            print('Selected Province: ${selectedProvince.id}');
                            context
                                .read<WilayahBloc>()
                                .add(GetCityEvent(id: selectedProvince.id));
                          }
                        },
                      ),
                      const Gap(20),
                      DropdownSearch<City>(
                        itemAsString: (City p) => p.name,
                        key: dropDownKeyCity,
                        selectedItem: state.city?.first,
                        items: state.city ?? [],
                        popupProps: PopupProps.bottomSheet(
                          showSearchBox: true,
                          bottomSheetProps: BottomSheetProps(
                            backgroundColor: Colors.black.withOpacity(.2),
                          ),
                        ),
                        dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration:
                              InputDecoration(labelText: "Pilih Kota"),
                        ),
                        onChanged: (City? selectedCity) {
                          if (selectedCity != null) {
                            print('Selected City: ${selectedCity.id}');
                            context
                                .read<WilayahBloc>()
                                .add(GetDistrictEvent(id: selectedCity.id));
                          }
                        },
                      ),
                      const Gap(20),
                      DropdownSearch<District>(
                        itemAsString: (District p) => p.name,
                        key: dropDownKeyDistrict,
                        selectedItem: state.district?.first,
                        items: state.district ?? [],
                        popupProps: PopupProps.bottomSheet(
                          showSearchBox: true,
                          bottomSheetProps: BottomSheetProps(
                            backgroundColor: Colors.black.withOpacity(.2),
                          ),
                        ),
                        dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration:
                              InputDecoration(labelText: "Pilih Kecamatan"),
                        ),
                        onChanged: (District? selectedDistrict) {
                          if (selectedDistrict != null) {
                            print('Selected District: ${selectedDistrict.id}');
                            context
                                .read<WilayahBloc>()
                                .add(GetVillageEvent(id: selectedDistrict.id));
                          }
                        },
                      ),
                      const Gap(20),
                      DropdownSearch<Village>(
                        itemAsString: (Village p) => p.name,
                        key: dropDownKeyVillage,
                        selectedItem: state.village?.first,
                        items: state.village ?? [],
                        popupProps: PopupProps.bottomSheet(
                          showSearchBox: true,
                          bottomSheetProps: BottomSheetProps(
                            backgroundColor: Colors.black.withOpacity(.2),
                          ),
                        ),
                        dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration:
                              InputDecoration(labelText: "Pilih Kelurahan"),
                        ),
                        onChanged: (Village? selectedVillage) {
                          if (selectedVillage != null) {
                            print('Selected Village: ${selectedVillage.id}');
                          }
                        },
                      ),
                    ],
                  ),
          ),
        ),
      );
    });
  }
}
