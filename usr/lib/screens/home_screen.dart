import 'package:flutter/material.dart';
import '../models/job_post.dart';
import 'job_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Dummy data - in a real app, this would be fetched from an API
  final List<JobPost> _jobPosts = [
    JobPost(
      title: 'Flutter Developer',
      company: 'Google',
      location: 'Mountain View, CA',
      description: 'We are looking for a skilled Flutter developer to join our team. The ideal candidate will have experience in building high-quality mobile applications for both Android and iOS. Responsibilities include collaborating with cross-functional teams to define, design, and ship new features.',
      url: 'https://infromoza.com/job/flutter-developer-google/',
    ),
    JobPost(
      title: 'Backend Engineer (Node.js)',
      company: 'Facebook',
      location: 'Menlo Park, CA',
      description: 'Join our backend team to build scalable and robust services. You will be working with Node.js, GraphQL, and various databases to power our applications. Experience with microservices architecture is a plus.',
      url: 'https://infromoza.com/job/backend-engineer-facebook/',
    ),
    JobPost(
      title: 'UI/UX Designer',
      company: 'Apple',
      location: 'Cupertino, CA',
      description: 'We are seeking a talented UI/UX designer to create amazing user experiences. The ideal candidate should have an eye for clean and artful design, possess superior UI skills and be able to translate high-level requirements into interaction flows and artifacts, and transform them into beautiful, intuitive, and functional user interfaces.',
      url: 'https://infromoza.com/job/ui-ux-designer-apple/',
    ),
     JobPost(
      title: 'Data Scientist',
      company: 'Netflix',
      location: 'Los Gatos, CA',
      description: 'As a Data Scientist, you will be responsible for analyzing large datasets to derive actionable insights. You will work on various projects, including recommendation systems, user behavior analysis, and A/B testing. Strong background in statistics and machine learning is required.',
      url: 'https://infromoza.com/job/data-scientist-netflix/',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infromoza - Vagas de Emprego'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: _jobPosts.length,
        itemBuilder: (context, index) {
          final job = _jobPosts[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(job.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('${job.company} - ${job.location}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JobDetailScreen(jobPost: job),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
