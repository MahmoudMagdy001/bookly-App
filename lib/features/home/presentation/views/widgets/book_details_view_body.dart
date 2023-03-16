import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}
