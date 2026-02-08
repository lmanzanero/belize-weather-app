import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../providers/sky_photo_provider.dart';

class UploadPhotoDialog extends ConsumerStatefulWidget {
  final XFile image;

  const UploadPhotoDialog({super.key, required this.image});

  @override
  ConsumerState<UploadPhotoDialog> createState() => _UploadPhotoDialogState();
}

class _UploadPhotoDialogState extends ConsumerState<UploadPhotoDialog> {
  final _captionController = TextEditingController();
  final _locationController = TextEditingController(text: 'Belize City'); // Default

  @override
  void dispose() {
    _captionController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final uploadState = ref.watch(skyPhotoUploadProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    ref.listen(skyPhotoUploadProvider, (previous, next) {
      if (next is AsyncData && next.value != null) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sky photo shared successfully!'), backgroundColor: Colors.green),
        );
      }
    });

    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, MediaQuery.of(context).viewInsets.bottom + 20),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF0F172A) : Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Share Your Sky',
                style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              if (uploadState.isLoading)
                const CircularProgressIndicator(color: Colors.orange)
              else
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
            ],
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.file(
              File(widget.image.path),
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _captionController,
            decoration: InputDecoration(
              hintText: 'What\'s happening in the sky?',
              filled: true,
              fillColor: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _locationController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.location_on, size: 18),
              hintText: 'Location',
              filled: true,
              fillColor: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: uploadState.isLoading
                  ? null
                  : () {
                      ref.read(skyPhotoUploadProvider.notifier).uploadPhoto(
                            image: File(widget.image.path),
                            caption: _captionController.text,
                            location: _locationController.text,
                          );
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Share Sky', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
