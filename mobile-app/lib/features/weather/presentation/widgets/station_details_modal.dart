import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import '../providers/weather_provider.dart';
import '../../domain/entities/station_details.dart';

class StationDetailsModal extends ConsumerWidget {
  final int stationId;

  const StationDetailsModal({super.key, required this.stationId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsAsync = ref.watch(stationDetailsProvider(stationId));
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF0F172A) : Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SafeArea(
        top: false,
        child: detailsAsync.when(
          data: (data) => _buildContent(context, data),
          loading: () => const SizedBox(
            height: 300,
            child: Center(child: CircularProgressIndicator(color: Colors.orange)),
          ),
          error: (err, _) => SizedBox(
            height: 200,
            child: Center(
              child: Text(
                'Error: $err', 
                style: TextStyle(color: isDark ? Colors.white : Colors.black87),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, StationFullData data) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
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
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.stationName,
                      style: GoogleFonts.inter(
                        color: isDark ? Colors.white : Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Elevation: ${data.station.elevation}m',
                      style: GoogleFonts.inter(
                        color: isDark ? Colors.white60 : Colors.black54, 
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(Icons.close, color: isDark ? Colors.white : Colors.black87),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Latest Readings',
            style: GoogleFonts.inter(
              color: isDark ? Colors.white : Colors.black87, 
              fontSize: 18, 
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          if (data.latest != null)
            GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 2.5,
              ),
              itemCount: data.latest!.length,
              itemBuilder: (context, index) {
                final reading = data.latest![index];
                return _buildReadingCard(context, reading);
              },
            ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildReadingCard(BuildContext context, WeatherValue reading) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? const Color(0xFF1E293B) : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isDark ? Colors.white.withOpacity(0.05) : Colors.black.withOpacity(0.05),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            reading.variable.name,
            style: TextStyle(
              color: isDark ? Colors.white60 : Colors.black54, 
              fontSize: 10,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            '${reading.value} ${reading.variable.unitSymbol}',
            style: TextStyle(
              color: isDark ? Colors.white : Colors.black87, 
              fontWeight: FontWeight.bold, 
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
