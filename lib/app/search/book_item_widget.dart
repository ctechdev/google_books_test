import 'package:flutter/material.dart';
import 'package:google_books_test/models/book.dart';
import 'package:google_books_test/routing/app_router.dart';

class BookItem extends StatelessWidget {
  final List<Book> books;
  final int index;
  const BookItem({required this.books, required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context, rootNavigator: true).pushNamed(
      AppRoutes.detailsPage,
      arguments: books[index]
    ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 5,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: books[index].info.imageLinks['smallThumbnail'] != null
                    ? SizedBox(
                        height: 180,
                        width: 120,
                        child: Image.network(
                          books[index]
                              .info
                              .imageLinks['smallThumbnail']
                              .toString(),
                          fit: BoxFit.fill,
                        ),
                      )
                    : SizedBox(
                        height: 180,
                        width: 120,
                        child: Image.asset('assets/no_cover.gif',
                            fit: BoxFit.fill, semanticLabel: 'No Cover'),
                      ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    child: books[index].info.authors.isNotEmpty
                        ? Text(
                            'by ${books[index].info.authors[0]}',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.withOpacity(0.70)),
                          )
                        : Text(
                            'by ${books[index].info.publisher}',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.withOpacity(0.70)),
                          ),
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    width: 190,
                    child: Text(books[index].info.title,
                        maxLines: 2,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow[600]),
                      const SizedBox(width: 4),
                      Text(books[index].info.averageRating.toString()),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Chip(
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.blue[200],
                    label: books[index].info.categories.isNotEmpty
                        ? Text(books[index].info.categories.first,
                            style: const TextStyle(fontSize: 12))
                        : const Text('Uncategorized'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}