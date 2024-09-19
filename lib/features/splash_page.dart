import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:gap/gap.dart';
import 'package:test_apps/features/wilayah/wilayah.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dropDownKey = GlobalKey<DropdownSearchState>();

    return BlocBuilder<WilayahBloc, WilayahState>(builder: (context, state) {
      return GestureDetector(
        onTap: () {
          if (dropDownKey.currentState?.isFocused == true) {
            dropDownKey.currentState?.closeDropDownSearch();
          }
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 16,
            ),
            child: Column(
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
                      context.read<WilayahBloc>().add(GetCityEvent(id: selectedProvince.id));
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
