import 'package:demorental/feature/add_new_rental/presentation/manager/rental_cubit/rental_cubit.dart';
import 'package:demorental/feature/home/presentation/view/widgets/empty_home_page.dart';
import 'package:demorental/feature/home/presentation/view/widgets/home_card_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RentalCubit, RentalState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return HomeCardShimmer();
          },
          success: (rentals) {
            if (rentals.isNotEmpty) {
              return Column(children: [HomePageCard(rental: rentals[0])]);
            } else {
              return EmptyHomePage();
            }
          },
        );
      },
    );
  }
}
