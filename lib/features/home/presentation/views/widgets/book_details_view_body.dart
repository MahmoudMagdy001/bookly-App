import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'custom_book_details_appbar.dart';
import 'similar_books_section.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 5.0),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 28)),
                SimilarBooksSection(),
                SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
