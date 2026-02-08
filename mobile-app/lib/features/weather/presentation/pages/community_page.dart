import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import '../providers/community_provider.dart';
import '../../domain/entities/community_spotter.dart';
import '../widgets/upload_photo_dialog.dart';

class CommunityPage extends ConsumerWidget {
  const CommunityPage({super.key});

  Future<void> _showImagePickerOptions(BuildContext context) async {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    showModalBottomSheet(
      context: context,
      backgroundColor: isDark ? const Color(0xFF1E293B) : Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from Files/Gallery'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(context, ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take Photo (Physical Device Only)'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(context, ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage(BuildContext context, ImageSource source) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: source,
        imageQuality: 80,
      );

      if (image != null && context.mounted) {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => UploadPhotoDialog(image: image),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Could not open picker: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spottersAsync = ref.watch(topSpottersProvider);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF0F172A) : Colors.white,
      appBar: AppBar(
        title: Text('Community', style: GoogleFonts.inter(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Share Your Sky',
                  style: GoogleFonts.inter(
                    fontSize: 18, 
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white : Colors.black87
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF1E293B) : Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.camera_alt, color: isDark ? Colors.orange : Colors.orange.shade700),
                    onPressed: () => _showImagePickerOptions(context),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            
            // Top Community Spotters Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Top Community Spotters',
                    style: GoogleFonts.inter(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                      color: isDark ? Colors.white : Colors.black87
                    ),
                  ),
                  const SizedBox(height: 20),
                  spottersAsync.when(
                    data: (spotters) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: spotters.map((s) => _buildSpotterAvatar(context, s)).toList(),
                    ),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    error: (err, _) => Text('Error: $err'),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => context.go('/users'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        padding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                      child: const Text('View All', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // List Items
            _buildListItem(context, Icons.emoji_events, 'Leaderboard'),
            _buildListItem(context, Icons.tag, 'Trending Hashbags'),
            _buildListItem(context, Icons.tag, 'Trending Hashtags'),
            _buildListItem(context, Icons.tag, '#BelizeSunset'),
            _buildListItem(context, Icons.tag, '#RainySeasonPrep'),
            
            const SizedBox(height: 32),
            
            // Live Map Preview
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: const DecorationImage(
                  image: NetworkImage('https://images.unsplash.com/photo-1524661135-423995f22d0b?q=80&w=1000'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.black38,
                ),
                child: const Center(
                  child: Text(
                    'Live Map',
                    style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _buildSpotterAvatar(BuildContext context, CommunitySpotter spotter) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: () => context.go('/community/spotter/${spotter.id}'),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(spotter.avatarUrl),
          ),
          const SizedBox(height: 8),
          Text(
            spotter.name,
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: isDark ? Colors.white : Colors.black87
            ),
          ),
          Text(
            '${spotter.photoCount} Photos',
            style: TextStyle(
              fontSize: 12, 
              color: isDark ? Colors.white60 : Colors.black54
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, IconData icon, String title) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: isDark ? Colors.white70 : Colors.black54),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: isDark ? Colors.white : Colors.black87
              ),
            ),
          ),
          Icon(Icons.chevron_right, color: isDark ? Colors.white24 : Colors.black26),
        ],
      ),
    );
  }
}
