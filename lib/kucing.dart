import 'package:flutter/material.dart';
import 'page1.dart';
import 'profil.dart';

class KucingPage extends StatelessWidget {
	final String imagePath;
	final String name;
	final String description;

	const KucingPage({
		Key? key,
		this.imagePath = 'assets/img/ocil.jpg',
		this.name = '',
		this.description = '',
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Detail Kucing'),
				backgroundColor: const Color(0xFF8DD9A3),
				elevation: 0,
			),
			backgroundColor: const Color(0xFFF3F3F3),
			body: SingleChildScrollView(
				child: Padding(
					padding: const EdgeInsets.all(16.0),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: [
							ClipRRect(
								borderRadius: BorderRadius.circular(12),
								child: Image.asset(
									imagePath,
									height: 300,
									width: double.infinity,
									fit: BoxFit.cover,
								),
							),
							const SizedBox(height: 20),
							Text(
								name,
								textAlign: TextAlign.center,
								style: const TextStyle(
									fontSize: 24,
									fontWeight: FontWeight.bold,
								),
							),
							const SizedBox(height: 12),
							Text(
								description,
								textAlign: TextAlign.center,
								style: const TextStyle(fontSize: 16, color: Colors.black87),
							),
							const SizedBox(height: 24),
							SizedBox(
								height: 48,
								child: ElevatedButton(
									onPressed: () => _showPurchaseDialog(context),
									style: ElevatedButton.styleFrom(
										backgroundColor: const Color(0xFF8DD9A3),
										shape: RoundedRectangleBorder(
											borderRadius: BorderRadius.circular(12),
										),
									),
									child: const Text(
										'Beli',
										style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
									),
								),
							),
						],
					),
				),
			),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Page1(),
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
	void _showPurchaseDialog(BuildContext context) {
		showDialog<void>(
			context: context,
			builder: (context) {
				return AlertDialog(
					title: const Text('Konfirmasi Pembelian'),
					content: Text('Apakah Anda ingin membeli "$name"?'),
					actions: [
						TextButton(
							onPressed: () => Navigator.of(context).pop(),
							child: const Text('Tidak'),
						),
						ElevatedButton(
							onPressed: () {
								Navigator.of(context).pop();
								ScaffoldMessenger.of(context).showSnackBar(
									SnackBar(content: Text('Terima kasih — Anda membeli $name')),
								);
							},
							style: ElevatedButton.styleFrom(
								backgroundColor: const Color(0xFF8DD9A3),
							),
							child: const Text('Beli'),
						),
					],
				);
			},
		);
	}
}
