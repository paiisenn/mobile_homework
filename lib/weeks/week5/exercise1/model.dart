import 'package:flutter/material.dart';

class OnboardingContent {
  final String title;
  final String description;
  final IconData icon;

  OnboardingContent({
    required this.title,
    required this.description,
    required this.icon,
  });
}

List<OnboardingContent> onboardingPages = [
  OnboardingContent(
    title: "Easy Time Management",
    description:
        "With management based on priority and daily tasks, it will give you convenience in managing and determining the tasks that must be done first.",
    icon: Icons.access_time_filled,
  ),
  OnboardingContent(
    title: "Increase Work Effectiveness",
    description:
        "Time management and the determination of more important tasks will give your job statistics better and always improve.",
    icon: Icons.trending_up,
  ),
  OnboardingContent(
    title: "Reminder Notification",
    description:
        "The advantage of this application is that it also provides reminders for you so you don't forget to keep doing your assignments well and according to the time you have set.",
    icon: Icons.notifications_active,
  ),
];
