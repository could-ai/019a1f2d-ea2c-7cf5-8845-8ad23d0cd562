import 'package:flutter/material.dart';
import '../models/job_post.dart';

class JobDetailScreen extends StatelessWidget {
  final JobPost jobPost;

  const JobDetailScreen({super.key, required this.jobPost});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jobPost.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(jobPost.logoUrl),
                  radius: 40,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                jobPost.title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                '${jobPost.company} - ${jobPost.location}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              Text(
                'Job Description',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                jobPost.description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
               const SizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // In a real app, you would launch the URL.
                    // For now, we can just show a snackbar.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Applying to: ${jobPost.url}')),
                    );
                  },
                  child: const Text('Apply Now'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
