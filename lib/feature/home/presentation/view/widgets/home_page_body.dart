import 'package:flutter/material.dart';

import 'home_page_card.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [HomePageCard()]);
  }
}
