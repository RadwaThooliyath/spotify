import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _buildCategoryContainer(String title) {
    // Check if the title is "All"
    final isAll = title == 'All';

    return Container(
      height: 40,
      decoration: BoxDecoration(
        // Set the color to green if it's "All", otherwise use grey
        color: isAll ? Colors.green : Colors.grey[900],
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            // Set the text color to black if it's "All", otherwise use white
            color: isAll ? Colors.black : Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
  Widget _buildArtistAvatar(String imagePath, String name) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
  Widget _buildRecentlyPlayedContainer(String imagePath, String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _buildCategoryContainer('All'),
                  const SizedBox(width: 10),
                  _buildCategoryContainer('Music'),
                  const SizedBox(width: 10),
                  _buildCategoryContainer('Podcasts'),
                ],
              ),
        const Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Picked for you',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/5.jpg',
                      height: 150,
                      width: 140,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Playlist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Bollywood trending",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 120),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Your favourite artists',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildArtistAvatar('assets/1.jpg', 'A R Rahman'),
                    const SizedBox(width: 15),
                    _buildArtistAvatar('assets/2.jpg', 'Darshan'),
                    const SizedBox(width: 15),
                    _buildArtistAvatar('assets/3.jpg', 'Anirudh'),
                    const SizedBox(width: 15),
                    _buildArtistAvatar('assets/4.jpg', 'Harris'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Recently Played',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildRecentlyPlayedContainer('assets/6.jpg', 'Song 1'),
                    const SizedBox(width: 15),
                    _buildRecentlyPlayedContainer('assets/7.jpg', 'Song 2'),
                    const SizedBox(width: 15),
                    _buildRecentlyPlayedContainer('assets/8.jpg', 'Song 3'),
                    const SizedBox(width: 15),
                    _buildRecentlyPlayedContainer('assets/9.jpg', 'Song 4'),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Explore',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildRecentlyPlayedContainer('assets/10.jpg', 'Song 1'),
                    const SizedBox(width: 15),
                    _buildRecentlyPlayedContainer('assets/11.jpg', 'Song 2'),
                    const SizedBox(width: 15),
                    _buildRecentlyPlayedContainer('assets/12.jpg', 'Song 3'),
                    const SizedBox(width: 15),
                    _buildRecentlyPlayedContainer('assets/5.jpg', 'Song 4'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
