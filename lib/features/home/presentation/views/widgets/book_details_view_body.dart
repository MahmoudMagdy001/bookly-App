import 'package:bookly/core/utlis/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'similar_books_list_view.dart';

class BookDeatilsViewBody extends StatelessWidget {
  const BookDeatilsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 40.0),
                const Text(
                  'The Jungle Book',
                  style: Styles.textStyle30,
                ),
                const SizedBox(height: 6.0),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 18.0),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 28),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 28)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                const SimilarBooksListView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
