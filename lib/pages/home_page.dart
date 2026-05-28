import 'package:flutter/material.dart';
import '../widgets/room_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "PRAKTIKUM PAB",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 0.78,

          children: const [

            RoomCard(
              nama: "Suite Room",
              harga: "\$49",
              image:
                  "https://images.unsplash.com/photo-1505693416388-ac5ce068fe85",
            ),

            RoomCard(
              nama: "Villa Room",
              harga: "\$99",
              image:
                  "https://images.unsplash.com/photo-1522708323590-d24dbb6b0267",
            ),

            RoomCard(
              nama: "Villa 2 Room",
              harga: "\$140",
              image:
                  "https://images.unsplash.com/photo-1502672260266-1c1ef2d93688",
            ),

            RoomCard(
              nama: "Villa 3 Room",
              harga: "\$149",
              image:
                  "https://images.unsplash.com/photo-1496417263034-38ec4f0b665a",
            ),
          ],
        ),
      ),
    );
  }
}