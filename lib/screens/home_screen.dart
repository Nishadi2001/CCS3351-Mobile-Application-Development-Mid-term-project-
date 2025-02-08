import 'package:flutter/material.dart';
import '../models/book.dart';
import '../widgets/book_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Book> books = [
      Book(
        title: "Rich Dad, Poor Dad",
        author: "Robert T. Kiyosaki",
        imageUrl: "assets/rich-dad-poor-dad.jpg",
        price: 1250,
      ),
      Book(
        title: "Men Are from Mars, Women Are from Venus",
        author: "John Gray",
        imageUrl: "assets/men-are-from-mars.jpg",
        price: 1500,
      ),
      Book(
        title: "The Alchemist",
        author: "Paulo Coelho",
        imageUrl: "assets/the-alchemist.jpg",
        price: 1100,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.jpg",
              height: 40, // Adjust size
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 10),
            const Text(
              "BOOK PULSE",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookCard(book: books[index]);
        },
      ),
    );
  }
}
