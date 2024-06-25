import 'package:flutter/material.dart';
import 'package:myapp/Pages/Trainer/trainer_screen.dart';

class TrainerPage extends StatelessWidget {
  const TrainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Our Trainers',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrainerScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: const Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildTrainerCard(
                  name: 'John Doe',
                  specialty: 'Strength Training',
                  description:
                      'John is an experienced trainer with a passion for helping you build strength and endurance.',
                  imageUrl: 'https://via.placeholder.com/150',
                ),
                _buildTrainerCard(
                  name: 'John Doe',
                  specialty: 'Strength Training',
                  description:
                      'John is an experienced trainer with a passion for helping you build strength and endurance.',
                  imageUrl: 'https://via.placeholder.com/150',
                ),
                _buildTrainerCard(
                  name: 'John Doe',
                  specialty: 'Strength Training',
                  description:
                      'John is an experienced trainer with a passion for helping you build strength and endurance.',
                  imageUrl: 'https://via.placeholder.com/150',
                ),
                _buildTrainerCard(
                  name: 'Jane Smith',
                  specialty: 'Yoga',
                  description:
                      'Jane specializes in yoga and mindfulness to help you find your inner peace and flexibility.',
                  imageUrl: 'https://via.placeholder.com/150',
                ),
              ],
            ),
          )
          // Add more trainer cards here
        ],
      ),
    );
  }

  Widget _buildTrainerCard({
    required String name,
    required String specialty,
    required String description,
    required String imageUrl,
  }) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.only(bottom: 16.0, right: 12.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  radius: 40,
                ),
                const SizedBox(height: 8),
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  specialty,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
