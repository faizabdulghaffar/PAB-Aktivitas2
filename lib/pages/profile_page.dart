import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const CircleAvatar(
                radius: 70,
                backgroundImage:
                    AssetImage('images/prabowo.jpg'),
              ),

              const SizedBox(height: 25),

              const Text(
                "Fa'iz Abdul Ghaffar",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "1462300102",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 30),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Column(
                  children: [

                    Row(
                      children: [
                        Icon(Icons.school),
                        SizedBox(width: 15),
                        Text(
                          "Universitas 17 Agustus 1945",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Icon(Icons.computer),
                        SizedBox(width: 15),
                        Text(
                          "Teknik Informatika",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),

                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(width: 15),
                        Text(
                          "faiz@gmail.com",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),

                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 20,
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
    );
  }
}