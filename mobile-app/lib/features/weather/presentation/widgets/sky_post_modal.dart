import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/community_spotter.dart';

class SkyPostModal extends StatelessWidget {
  final SkyPhoto photo;

  const SkyPostModal({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF0F172A) : Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: isDark ? Colors.white24 : Colors.black12,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(photo.userAvatar ?? 'https://i.pravatar.cc/150'),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        photo.userName ?? 'Anonymous',
                        style: GoogleFonts.inter(fontWeight: FontWeight.bold, color: isDark ? Colors.white : Colors.black87),
                      ),
                      Text(
                        '${photo.location} • ${DateFormat('h:mm a').format(photo.timestamp)}',
                        style: const TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          Image.network(
            photo.imageUrl,
            width: double.infinity,
            height: 350,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _ActionButton(icon: Icons.favorite_border, label: '${photo.likes}'),
                    const SizedBox(width: 20),
                    _ActionButton(icon: Icons.chat_bubble_outline, label: '${photo.comments}'),
                    const SizedBox(width: 20),
                    const _ActionButton(icon: Icons.share_outlined, label: 'Share'),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  photo.caption,
                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: isDark ? Colors.white : Colors.black87,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Row(
      children: [
        Icon(icon, size: 22, color: isDark ? Colors.white70 : Colors.black54),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(
            color: isDark ? Colors.white70 : Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
