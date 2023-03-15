import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 19.0,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              height: 28,
              AssetsData.search,
            ),
          ),
        ],
      ),
    );
  }
}
