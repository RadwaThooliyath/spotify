import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  Widget _buildLibraryItem(String title, String subtitle, String description, String buttonText) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/s.png', // Replace with your image path
                    width: 24, // Set your desired image width
                    height: 24, // Set your desired image height
                  ),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity, // Set your desired width here
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    buttonText,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 8,
          top: 15,
          child: GestureDetector(
            onTap: () {
              // Add your onTap functionality here
            },
            child: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Your Library",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              CupertinoIcons.plus,
              color: Colors.white,
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildLibraryItem(
              'Tips',
              'Create your first playlist',
              "It's easy, we'll help you",
              'Create Playlist', // Button text for the first container
            ),
            _buildLibraryItem(
              'Tips',
              "Let's find some podcasts to follow",
              "We'll keep you updated on new episodes",
              'Browse Podcasts', // Button text for the second container
            ),
          ],
        ),
      ),
    );
  }
}
