import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../providers/community_provider.dart';
import '../../domain/entities/community_spotter.dart';

class SpotterDetailsPage extends ConsumerWidget {
  final String spotterId;

  const SpotterDetailsPage({super.key, required this.spotterId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spotterAsync = ref.watch(spotterDetailsProvider(spotterId));
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF0F172A) : Colors.white,
      body: spotterAsync.when(
        data: (spotter) => CustomScrollView(
          slivers: [
            _buildAppBar(context, spotter),
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shared Sky Gallery',
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final photo = spotter.sharedPhotos[index];
                    return _buildPhotoCard(context, photo);
                  },
                  childCount: spotter.sharedPhotos.length,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),
        loading: () => const Center(child: CircularProgressIndicator(color: Colors.orange)),
        error: (err, _) => Center(child: Text('Error: $err')),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, CommunitySpotter spotter) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SliverAppBar(
      expandedHeight: 200,
      pinned: true,
      backgroundColor: isDark ? const Color(0xFF1E293B) : Colors.orange,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            if (spotter.sharedPhotos.isNotEmpty)
              Image.network(spotter.sharedPhotos.first.imageUrl, fit: BoxFit.cover),
            Container(color: Colors.black45),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(spotter.avatarUrl),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  spotter.name,
                  style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Community Spotter • ${spotter.photoCount} Photos',
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPhotoCard(BuildContext context, SkyPhoto photo) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            child: Image.network(photo.imageUrl, fit: BoxFit.cover, width: double.infinity, height: 250),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on, size: 14, color: Colors.orange),
                        const SizedBox(width: 4),
                        Text(photo.location, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Text(
                      DateFormat('MMM d, h:mm a').format(photo.timestamp),
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  photo.caption,
                  style: TextStyle(
                    color: isDark ? Colors.white : Colors.black87,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
