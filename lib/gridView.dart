import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({
    super.key,
    required this.catesName,
    required this.cateColors,
    required this.cateIcons,
  });

  final List catesName;
  final List<Color> cateColors;
  final List<IconData> cateIcons;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        );
      },
    );
  }
}
