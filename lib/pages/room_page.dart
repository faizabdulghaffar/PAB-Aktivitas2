import 'package:flutter/material.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Room Detail",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(

          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(20),

                  child: Image.network(
                    'https://images.unsplash.com/photo-1505693416388-ac5ce068fe85',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Suite Room",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "\$49",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Room Details",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "2 Beds, 1 Bathroom, TV, Balcony View",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  "Facilities",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Row(
                  children: [
                    Icon(Icons.wifi),
                    SizedBox(width: 10),
                    Text("Free Wifi"),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(Icons.tv),
                    SizedBox(width: 10),
                    Text("Smart TV"),
                  ],
                ),

                const SizedBox(height: 10),

                const Row(
                  children: [
                    Icon(Icons.pool),
                    SizedBox(width: 10),
                    Text("Swimming Pool"),
                  ],
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 55,

                  child: ElevatedButton(
                    onPressed: () {

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(

                            title: const Text(
                              "Confirm Booking",
                            ),

                            content: const Text(
                              "Book this room for \$49 per night?"
                            ),

                            actions: [

                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancel"),
                              ),

                              ElevatedButton(
                                onPressed: () {

                                  Navigator.pop(context);

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        "Booking Berhasil",
                                      ),
                                    ),
                                  );
                                },

                                child: const Text("OK"),
                              ),
                            ],
                          );
                        },
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),

                    child: const Text(
                      "Book Now",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}