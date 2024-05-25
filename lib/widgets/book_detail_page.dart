// lib/widgets/book_detail_page.dart
import 'package:flutter/material.dart';
import 'package:perpus1/models/book.dart';


class BookDetailPage extends StatelessWidget {
  final Book book;

  BookDetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
        backgroundColor: Color(0xff526D82),
        titleTextStyle: TextStyle(color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold
        ),
      ),
      backgroundColor: Color(0xff27374D), // Set your desired background color here
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/1.jpg', // Path dari aset lokal
                fit: BoxFit.cover,
                width: 300, // Atur lebar gambar sesuai kebutuhan Anda
                height: 300, // Atur tinggi gambar sesuai kebutuhan Anda
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              book.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 8.0),
            Text(
              'by ${book.author}',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.white),
            ),
            SizedBox(height: 16.0),
            // Tambahkan detail lainnya di sini
            Text(
              'Description or other details about the book can go here.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
