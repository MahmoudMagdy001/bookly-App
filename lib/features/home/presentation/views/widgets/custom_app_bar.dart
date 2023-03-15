import 'package:flutter/material.dart';

import '../../../../../core/utlis/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        top: 40.0,
        bottom: 20.0,
      ),
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
