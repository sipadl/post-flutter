import 'package:flutter/material.dart';

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
              Column(
                children: [
                  const Text(
                    'Our Trainers',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Our Trainers',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
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
