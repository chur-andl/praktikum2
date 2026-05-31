import 'package:flutter/material.dart';
import 'kucing.dart';
import 'profil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),

                /// Banner
                SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/img/foto.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                /// Menu Grid
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1,
                  children: [
                    buildMenuButton(
                      context,
                      Icons.pets,
                      'Kucing',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KucingPage(
                              name: 'Ocil',
                              description:
                                  'Kucing Mantap, berumur 1 tahun.',
                              imagePath: 'assets/img/ocil.jpg',
                            ),
                          ),
                        );
                      },
                    ),

                    buildMenuButton(
                      context,
                      Icons.pets,
                      'Anjing',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.cruelty_free,
                      'Kelinci',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.flutter_dash,
                      'Burung',
                      () {},
                    ),

                    // Tambahan 10 Menu

                    buildMenuButton(
                      context,
                      Icons.set_meal,
                      'Ikan',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.bug_report,
                      'Hamster',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.emoji_nature,
                      'Kura-Kura',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.agriculture,
                      'Kambing',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.grass,
                      'Sapi',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.egg,
                      'Ayam',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.water,
                      'Bebek',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.pets,
                      'Monyet',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.pets,
                      'Kuda',
                      () {},
                    ),

                    buildMenuButton(
                      context,
                      Icons.pets,
                      'Domba',
                      () {},
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => KucingPage(
                  name: 'Ocil',
                  description:
                      'Kucing Mantap, berumur 1 tahun. Cocok sebagai teman bermain.',
                  imagePath: 'assets/img/foto.jpg',
                ),
              ),
            );
          }

          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Profil(),
              ),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Detail',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget buildMenuButton(
  BuildContext context,
  IconData icon,
  String title,
  VoidCallback onPressed,
) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.deepPurple,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 55),
        const SizedBox(height: 12),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}