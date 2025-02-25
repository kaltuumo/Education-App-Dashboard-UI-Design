import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DashboardScreen extends StatelessWidget {
  List catesName = [
    "Classes",
    "Category",
    "Courses",
    "Book Store",
    "Live Courses",
    "Leader Board",
  ];
  List<Color> cateColors = [
    Colors.pink,
    Colors.blueAccent,
    Colors.deepOrange,
    Colors.purple,
    Colors.green,
    const Color.fromARGB(255, 179, 179, 43),
  ];

  List<IconData> cateIcons = [
    Icons.emoji_events,
    Icons.category,
    Icons.play_circle_fill,
    Icons.store,
    Icons.video_library,
    Icons.assessment,
  ];
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.8,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 175, 123),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 0, right: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Icon(Icons.menu, color: Colors.white),
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("images/wom.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Mss Kl",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),

                      Text(
                        "Last Update: 23 Feb 2025",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      const SizedBox(height: 20),

                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Search By Name",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            // Optional: Add a border
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // Rounded corners
                            borderSide:
                                BorderSide.none, // Removes default border
                          ),
                          filled: true, // Enables background color
                          fillColor: Colors.white, // White background
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2.7,
              ),
              child: GridView.builder(
                itemCount: catesName.length,
                shrinkWrap: true,

                physics: NeverScrollableScrollPhysics(),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: cateColors[index],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(cateIcons[index], color: Colors.white),
                      ),
                      Text(
                        catesName[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
