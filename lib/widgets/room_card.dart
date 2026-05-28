import 'package:flutter/material.dart';

class RoomCard extends StatelessWidget {

  final String nama;
  final String harga;
  final String image;

  const RoomCard({
    super.key,
    required this.nama,
    required this.harga,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Column(
        children: [

          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),

              child: Image.network(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            nama,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            harga,
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}