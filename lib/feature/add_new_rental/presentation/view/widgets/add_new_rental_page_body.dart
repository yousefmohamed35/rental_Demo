import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/feature/add_new_rental/presentation/manager/rental_cubit/rental_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:demorental/core/presentation/widgets/drop_down/generic_drop_down_button.dart';
import 'package:demorental/core/presentation/widgets/drop_down/drop_down_item.dart';
import 'package:demorental/core/presentation/widgets/button/app_button.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';

import '../../../../../core/enums/enums.dart';
import '../../../data/models/rental_model.dart';

class AddNewRentalPageBody extends StatefulWidget {
  const AddNewRentalPageBody({super.key});

  @override
  State<AddNewRentalPageBody> createState() => _AddNewRentalPageBodyState();
}

class _AddNewRentalPageBodyState extends State<AddNewRentalPageBody> {
  final List<String> types = ['home', 'car'];
  final List<String> homeLocations = ['cairo', 'geza', 'alexandria'];
  final List<String> carTypes = ['BMW', 'TOYOTA', 'HONDA', 'Marcedes'];

  String? selectedType;
  String? selectedHomeLocation;
  String? selectedCarType;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Add New Rental', style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 20),
          _buildDropdown<String>(
            hint: 'Choose rental type',
            items: types,
            selectedItem: selectedType,
            onChanged: (value) {
              setState(() {
                selectedType = value;
                selectedHomeLocation = null;
                selectedCarType = null;
                selectedDate = null;
                selectedTime = null;
              });
            },
          ),
          const SizedBox(height: 20),
          if (selectedType == 'home')
            _buildDropdown<String>(
              key: const ValueKey('home_dropdown'),
              hint: 'Choose home location',
              items: homeLocations,
              selectedItem: selectedHomeLocation,
              onChanged: (value) {
                setState(() {
                  selectedHomeLocation = value;
                  selectedDate = null;
                  selectedTime = null;
                });
              },
            ),
          if (selectedType == 'car')
            _buildDropdown<String>(
              key: const ValueKey('car_dropdown'),
              hint: 'Choose car type',
              items: carTypes,
              selectedItem: selectedCarType,
              onChanged: (value) {
                setState(() {
                  selectedCarType = value;
                  selectedDate = null;
                  selectedTime = null;
                });
              },
            ),

          const SizedBox(height: 20),
          if (_shouldShowDatePicker)
            AppButton(
              onPressed: pickDate,
              backgroundColor: Colors.transparent,
              borderColor: AppColors.primaryColor,
              textStyle: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(color: AppColors.primaryColor),
              label: selectedDate == null
                  ? 'Choose rental date'
                  : 'Date: ${DateFormat('yyyy-MM-dd').format(selectedDate!)}',
            ),

          const SizedBox(height: 10),
          if (selectedDate != null)
            AppButton(
              onPressed: pickTime,
              backgroundColor: Colors.transparent,
              borderColor: AppColors.primaryColor,
              textStyle: Theme.of(
                context,
              ).textTheme.labelSmall?.copyWith(color: AppColors.primaryColor),
              label: selectedTime == null
                  ? 'Choose time'
                  : 'Time: ${selectedTime!.format(context)}',
            ),

          const SizedBox(height: 30),
          if (selectedDate != null && selectedTime != null)
            BlocConsumer<RentalCubit, RentalState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  loading: () {
                    Center(child: const CircularProgressIndicator());
                  },
                  success: (rentals) {
                    context.showSnackBar(
                      message: 'Rental saved successfully!',
                      state: SnackBarStates.success,
                    );
                    context.pop();
                  },
                );
              },
              builder: (context, state) {
                return AppButton(
                  label: 'Save Rental',
                  onPressed: () {
                    final rental = RentalModel(
                      type: selectedType!,
                      homeLocation: selectedHomeLocation,
                      carType: selectedCarType,
                      date: selectedDate!,
                      time: selectedTime!,
                    );
                    context.read<RentalCubit>().addRental(rental);
                  },
                  width: double.infinity,
                );
              },
            ),
        ],
      ),
    );
  }

  Widget _buildDropdown<T>({
    Key? key,
    required String hint,
    required List<String> items,
    required T? selectedItem,
    required void Function(T?) onChanged,
  }) {
    T? safeSelectedItem;
    if (selectedItem != null) {
      bool exists = items.any((item) => item == selectedItem);
      safeSelectedItem = exists ? selectedItem : null;
    }

    return GenericDropDownButton<T>(
      key: key,
      hintText: hint,
      items: items
          .map((e) => GenericDropdownMenuItem<T>(title: e, value: e as T))
          .toList(),
      selectedItem: safeSelectedItem,
      onChanged: onChanged,
    );
  }

  bool get _shouldShowDatePicker {
    return (selectedType == 'home' && selectedHomeLocation != null) ||
        (selectedType == 'car' && selectedCarType != null);
  }

  Future pickDate() async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: DateTime(now.year + 1),
    );
    if (date != null) setState(() => selectedDate = date);
  }

  Future pickTime() async {
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (time != null) setState(() => selectedTime = time);
  }

  void saveRental() {
    final rentalInfo = {
      'type': selectedType,
      'homeLocation': selectedHomeLocation,
      'carType': selectedCarType,
      'date': selectedDate,
      'time': selectedTime,
    };

    print('Rental Info: $rentalInfo');

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Rental saved successfully!')));
  }
}
