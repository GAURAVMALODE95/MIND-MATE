import 'package:flutter/material.dart';

class prosListItem {
  final String imageUrl;
  final String title;
  final String subtitle;

  final String comments;
  final String likes;
  final String que1;
  final String que2;
  final String que3;
  final String que4;

  prosListItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.comments,
    required this.likes,
    required this.que1,
    required this.que2,
    required this.que3,
    required this.que4,
  });
}

class MediaListItem {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String comments;
  final String likes;
  final String que1;
  final String que2;
  final String que3;
  final String que4;

  MediaListItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.comments,
    required this.likes,
    required this.que1,
    required this.que2,
    required this.que3,
    required this.que4,
  });
}

class LearnListItem {
  final String imageUrl;
  final String title;
  final String subtitle;

  final String comments;
  final String likes;
  final String que1;
  final String que2;
  final String que3;
  final String que4;

  LearnListItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.comments,
    required this.likes,
    required this.que1,
    required this.que2,
    required this.que3,
    required this.que4,
  });
}

class financeListItem {
  final String imageUrl;
  final String title;
  final String subtitle;

  final String comments;
  final String likes;
  final String que1;
  final String que2;
  final String que3;
  final String que4;

  financeListItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.comments,
    required this.likes,
    required this.que1,
    required this.que2,
    required this.que3,
    required this.que4,
  });
}

List<prosListItem> listItems = [
  prosListItem(
    imageUrl: 'assets/images/pers-1.jpg',
    title: 'LearnMate',
    subtitle: 'A personalized tutor for you',
    comments: '134.2k',
    likes: '67',
    que1: 'What are some effective study techniques for exams?',
    que2: 'How can I improve my essay writing skills?',
    que3: 'Can you explain the basics of algebra?',
    que4: 'What resources can help me understand physics concepts better?',
  ),
  prosListItem(
    imageUrl: 'assets/images/pers-2.jpg',
    title: 'SmartFit',
    subtitle: 'Your fitness journey, tailored just for you',
    comments: '145.0k',
    likes: '49',
    que1: 'How do I create a personalized workout plan?',
    que2: 'What are some effective exercises for weight loss?',
    que3: 'How can I stay motivated to achieve my fitness goals?',
    que4: 'What should I eat before and after workouts?',
  ),
  prosListItem(
    imageUrl: 'assets/images/pers-3.jpg',
    title: 'AI Love Guru',
    subtitle: 'Connecting hearts through AI guidance',
    comments: '87.5k',
    likes: '30',
    que1: 'How do I start a meaningful conversation?',
    que2: 'What are some tips for a successful first date?',
    que3: 'How can I improve my relationship communication?',
    que4: 'What should I do to maintain a healthy relationship?',
  ),
  prosListItem(
    imageUrl: 'assets/images/pers-4.jpg',
    title: 'TripGenius AI',
    subtitle: 'Discover new horizons with AI expertise',
    comments: '112.3k',
    likes: '55',
    que1: 'What are the best travel destinations for adventure seekers?',
    que2: 'How can I plan a budget-friendly trip?',
    que3: 'What are the top must-visit places in Europe?',
    que4: 'How can I make the most of my travel experience?',
  ),
  prosListItem(
    imageUrl: 'assets/images/pers-5.jpg',
    title: 'MindAI Counselor',
    subtitle: 'Understanding emotions with AI sensitivity',
    comments: '90.8k',
    likes: '38',
    que1: 'How can I manage stress effectively?',
    que2: 'What are some techniques to improve emotional intelligence?',
    que3: 'How do I handle anxiety in challenging situations?',
    que4: 'What steps can I take to improve my mental well-being?',
  ),
];

List<MediaListItem> listItems2 = [
  
  MediaListItem(
    imageUrl: 'assets/images/media-3.jpg',
    title: 'RecipeMaster',
    subtitle: 'Create Gourmet Dishes with Ease Using AI',
    comments: '23.5k',
    likes: '31',
    que1: 'Can you suggest a recipe for a quick dinner?',
    que2: 'What are some tips for improving my cooking skills?',
    que3: 'How can I create gourmet dishes at home?',
    que4: 'What are some easy recipes for beginners?',
  ),
  MediaListItem(
    imageUrl: 'assets/images/media-4.jpg',
    title: 'MelodyMate',
    subtitle: 'Find Your Next Favorite Song with AI',
    comments: '17.6k',
    likes: '67',
    que1: 'Can you recommend a song based on my mood?',
    que2: 'How do I discover new music genres?',
    que3: 'What are the trending songs this week?',
    que4: 'Can you suggest music similar to my favorite artist?',
  ),
];

List<LearnListItem> listItems3 = [
  LearnListItem(
    imageUrl: 'assets/images/learn-1.jpg',
    title: 'PlantPal',
    subtitle: 'Your AI Companion for Expert Plant Care and Growth Tips',
    comments: '188.9k',
    likes: '58',
    que1: 'How do I take care of my indoor plants?',
    que2: 'What are the best plants for low light conditions?',
    que3: 'How often should I water my succulents?',
    que4: 'What is the best soil mix for my plants?',
  ),
  LearnListItem(
    imageUrl: 'assets/images/learn-2.jpg',
    title: 'TranslatEase',
    subtitle:
        'Instant and Accurate Real-Time Translation for Seamless Communication',
    comments: '67.3k',
    likes: '84',
    que1: 'What cat is called in french? ',
    que2: 'What are some tips for learning a new language?',
    que3: 'How can I improve my pronunciation in Spanish?',
    que4: 'how to say hello in chinese?',
  ),
  LearnListItem(
    imageUrl: 'assets/images/learn-3.jpg',
    title: 'DIY Genie',
    subtitle: 'AI-Powered Guidance and Inspiration for All Your DIY Projects',
    comments: '45.8k',
    likes: '29',
    que1: 'What are some easy DIY projects for beginners?',
    que2: 'How do I build a bookshelf from scratch?',
    que3: 'Can you suggest creative DIY home decor ideas?',
    que4: 'What tools do I need for woodworking projects?',
  ),
  LearnListItem(
    imageUrl: 'assets/images/learn-4.jpg',
    title: 'HistoryGuide',
    subtitle: 'Explore the Past with AI-Enhanced Historical Tours and Insights',
    comments: '21.4k',
    likes: '42',
    que1: 'Can you tell me about the history of Ancient Egypt?',
    que2: 'What are some key events in World War II?',
    que3: 'How did the Industrial Revolution change society?',
    que4: 'What are some interesting historical sites to visit?',
  ),
];

List<financeListItem> listItems4 = [
  financeListItem(
    imageUrl: 'assets/images/ass-1.jpg',
    title: 'AI Code Assistant',
    subtitle: 'Enhance Your Coding Efficiency with AI-Powered Code Copilot',
    comments: '135.7k',
    likes: '79',
    que1: 'How can I improve my coding skills?',
    que2: 'Can you help me debug this code?',
    que3: 'What are some best practices for clean code?',
    que4: 'How do I optimize the performance of my program?',
  ),
  financeListItem(
    imageUrl: 'assets/images/ass-2.jpg',
    title: 'AI Financial Planner',
    subtitle:
        'Optimize Your Finances with Intelligent AI-Driven Personal Finance Management',
    comments: '97.3k',
    likes: '53',
    que1: 'How can I create a personal budget?',
    que2: 'What are some tips for saving money?',
    que3: 'How do I plan for retirement?',
    que4: 'What is the best way to invest my savings?',
  ),
];
