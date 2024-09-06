import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Color> _containerColors1 = [
    Colors.pink,
    Colors.teal,
    Colors.purple,
    Colors.indigo,
  ];
  final List<Color> _containerColors2 = [
    Colors.cyan,
    Colors.red,
    Colors.brown,
    Colors.orange,
    Colors.pinkAccent,
    Colors.greenAccent,
    Colors.pink,
    Colors.green,
    Colors.purple,
    Colors.indigo,
  ];

  final List<String> _imagePaths1 = [
    'assets/9.jpg',
    'assets/12.jpg',
    'assets/10.jpg',
    'assets/11.jpg',
  ];
  final List<String> _imagePaths2 = [
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/9.jpg',
    'assets/10.jpg',
    'assets/6.jpg',
    'assets/7.jpg',
    'assets/8.jpg',
    'assets/12.jpg',
    'assets/11.jpg',
  ];

  final List<String> _topRightTexts1 = [
    'Music',
    'Podcasts',
    'Live Events',
    'Home of I-Pop',
  ];
  final List<String> _topRightTexts2 = [
    'Tamil',
    'AR Rahman hits',
    'Malayalam',
    "90's hits",
    "Mixed",
    "New Releases",
    "Tamil",
    "Hindi",
    "Summer",
    "Radio"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    const Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.camera_alt, color: Colors.white),
                      onPressed: () {
                        // Add camera action here
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.search, color: Colors.black),
                  hintText: 'Search for something...',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Start Browsing',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 200,
                child: GridView.builder(
                  itemCount: _topRightTexts1.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 60,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: _containerColors1[index % _containerColors1.length],
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Text(
                            _topRightTexts1[index],
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          right: -6,
                          bottom: -6,
                          child: Transform.rotate(
                            angle: -0.5, // Adjust the angle to slant the image
                            child: Image.asset(
                              _imagePaths1[index % _imagePaths1.length],
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Explore',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/11.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/12.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/10.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Browse all',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 90,
                ),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: _containerColors2[index % _containerColors2.length],
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Text(
                          _topRightTexts2[index % _topRightTexts2.length],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Positioned(
                        right: -10,
                        bottom: -10,
                        child: Transform.rotate(
                          angle: -0.5, // Adjust the angle to slant the image
                          child: Image.asset(
                            _imagePaths2[index % _imagePaths2.length],
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
