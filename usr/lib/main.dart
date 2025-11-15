import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future-Proof Career Skills',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class Skill {
  final String title;
  final String description;
  final IconData icon;

  Skill({required this.title, required this.description, required this.icon});
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Skill> skills = [
      Skill(
        title: 'Artificial Intelligence & Machine Learning',
        description: 'Building intelligent systems that can learn and adapt.',
        icon: Icons.auto_awesome,
      ),
      Skill(
        title: 'Flutter Development',
        description: 'Creating beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.',
        icon: Icons.phone_android,
      ),
      Skill(
        title: 'Cloud Computing',
        description: 'Leveraging services from providers like AWS, Azure, and Google Cloud.',
        icon: Icons.cloud,
      ),
      Skill(
        title: 'Cybersecurity',
        description: 'Protecting systems, networks, and data from digital attacks.',
        icon: Icons.security,
      ),
      Skill(
        title: 'Data Science & Analytics',
        description: 'Extracting insights and knowledge from data.',
        icon: Icons.analytics,
      ),
      Skill(
        title: 'Communication & Collaboration',
        description: 'Effectively sharing ideas and working with others.',
        icon: Icons.people,
      ),
      Skill(
        title: 'Continuous Learning',
        description: 'The ability to constantly adapt and learn new skills.',
        icon: Icons.school,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: const Text('Top Skills for a Future-Proof Career'),
      ),
      body: ListView.builder(
        itemCount: skills.length,
        itemBuilder: (context, index) {
          final skill = skills[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              leading: Icon(skill.icon, color: Theme.of(context).colorScheme.primary),
              title: Text(skill.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(skill.description),
            ),
          );
        },
      ),
    );
  }
}
