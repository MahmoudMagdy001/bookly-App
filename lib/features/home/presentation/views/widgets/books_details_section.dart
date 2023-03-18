import 'package:flutter/material.dart';

import '../../../../../core/utlis/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.18),
          child: const CustomBookImage(
            imageUrl:
                'https://imgv3.fotor.com/images/blog-richtext-image/part-blurry-image.jpg',
          ),
        ),
        const SizedBox(height: 30.0),
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
        const SizedBox(height: 10.0),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: 250,
          rating: 5,
        ),
        const SizedBox(height: 20),
        const BooksAction(),
      ],
    );
  }
}
