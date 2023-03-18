import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'books_details_section.dart';
import 'custom_book_details_appbar.dart';
import 'similar_books_section.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 5.0),
                BookDetailsSection(books: bookModel),
                const Expanded(child: SizedBox(height: 28)),
                const SimilarBooksSection(),
                const SizedBox(height: 25.0),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
