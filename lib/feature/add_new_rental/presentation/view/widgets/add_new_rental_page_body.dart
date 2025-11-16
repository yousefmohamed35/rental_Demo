import 'package:auto_route/auto_route.dart';
import 'package:demorental/core/extension/context.dart';
import 'package:demorental/di/injection_container.dart';
import 'package:demorental/feature/add_new_rental/presentation/manager/rental_cubit/rental_cubit.dart';
import 'package:demorental/feature/notification/data/repo/notification_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:demorental/core/presentation/widgets/drop_down/generic_drop_down_button.dart';
import 'package:demorental/core/presentation/widgets/drop_down/drop_down_item.dart';
import 'package:demorental/core/presentation/widgets/button/app_button.dart';
import 'package:demorental/core/utilities/light_theme/light_colors.dart';

import '../../../../../core/enums/enums.dart';
import '../../../data/models/rental_model.dart';

class DropdownItem {
  final String value; // القيمة الداخلية
  final String display; // النص المعروض للمستخدم

  DropdownItem({required this.value, required this.display});
}

class AddNewRentalPageBody extends StatefulWidget {
  const AddNewRentalPageBody({super.key});

  @override
  State<AddNewRentalPageBody> createState() => _AddNewRentalPageBodyState();
}

class _AddNewRentalPageBodyState extends State<AddNewRentalPageBody> {
  late final List<DropdownItem> types;
  late final List<DropdownItem> homeLocations;
  late final List<DropdownItem> carTypes;

  String? selectedType;
  String? selectedHomeLocation;
  String? selectedCarType;
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // تعريف القوائم مع localization
    types = [
      DropdownItem(value: 'block', display: context.locale.block),
      DropdownItem(value: 'car', display: context.locale.car),
    ];

    homeLocations = [
      DropdownItem(value: 'cairo', display: context.locale.cairo),
      DropdownItem(value: 'giza', display: context.locale.giza),
      DropdownItem(value: 'alexandria', display: context.locale.alexandria),
    ];

    carTypes = [
      DropdownItem(value: 'BMW', display: 'BMW'),
      DropdownItem(value: 'TOYOTA', display: 'TOYOTA'),
      DropdownItem(value: 'HONDA', display: 'HONDA'),
      DropdownItem(value: 'Marcedes', display: 'Marcedes'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.locale.addNewRental,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 20),
          _buildDropdown(
            hint: context.locale.chooseRentalType,
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
          if (selectedType == 'block')
            _buildDropdown(
              key: const ValueKey('home_dropdown'),
              hint: context.locale.chooseHomeLocation,
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
            _buildDropdown(
              key: const ValueKey('car_dropdown'),
              hint: context.locale.chooseCarType,
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
                  ? context.locale.chooseRentalDate
                  : '${context.locale.rentalDate}: ${DateFormat('yyyy-MM-dd').format(selectedDate!)}',
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
                  ? context.locale.chooseRentalTime
                  : '${context.locale.rentalTime}: ${selectedTime!.format(context)}',
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
                      message: context.locale.rentalSavedSuccessfully,
                      state: SnackBarStates.success,
                    );
                    context.pop();
                  },
                );
              },
              builder: (context, state) {
                return AppButton(
                  label: context.locale.saveRental,
                  onPressed: () {
                    final rental = RentalModel(
                      type: selectedType!,
                      homeLocation: selectedHomeLocation,
                      carType: selectedCarType,
                      date: selectedDate!,
                      time: selectedTime!,
                    );

                    final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;

                    context.read<RentalCubit>().addRental(rental);

                    final scheduledDateTime = DateTime(
                      selectedDate!.year,
                      selectedDate!.month,
                      selectedDate!.day,
                      selectedTime!.hour,
                      selectedTime!.minute,
                    );

                    locater<NotificationRepository>().scheduleNotification(
                      id: id,
                      title: context.locale.reminderRental,
                      body: context.locale.reminder,
                      scheduledDate: scheduledDateTime,
                    );

                    locater<NotificationRepository>().showNotification(
                      id: rental.hashCode,
                      title: context.locale.newRental,
                      body: context.locale.rentalSavedSuccessfully,
                    );
                  },
                  width: double.infinity,
                );
              },
            ),
        ],
      ),
    );
  }

  Widget _buildDropdown({
    Key? key,
    required String hint,
    required List<DropdownItem> items,
    required String? selectedItem,
    required void Function(String?) onChanged,
  }) {
    DropdownItem? safeSelectedItem;
    if (selectedItem != null) {
      safeSelectedItem = items.firstWhere((item) => item.value == selectedItem);
    }

    return GenericDropDownButton<DropdownItem>(
      key: key,
      hintText: hint,
      items: items
          .map(
            (e) => GenericDropdownMenuItem<DropdownItem>(
              title: e.display,
              value: e,
            ),
          )
          .toList(),
      selectedItem: safeSelectedItem,
      onChanged: (value) => onChanged(value?.value),
    );
  }

  bool get _shouldShowDatePicker {
    return (selectedType == 'block' && selectedHomeLocation != null) ||
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
}
