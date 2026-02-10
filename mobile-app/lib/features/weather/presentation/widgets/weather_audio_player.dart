import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class WeatherAudioPlayer extends StatefulWidget {
  final String url;

  const WeatherAudioPlayer({super.key, required this.url});

  @override
  State<WeatherAudioPlayer> createState() => _WeatherAudioPlayerState();
}

class _WeatherAudioPlayerState extends State<WeatherAudioPlayer> {
  late AudioPlayer _player;
  PlayerState _playerState = PlayerState.stopped;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _setupPlayer();
  }

  Future<void> _setupPlayer() async {
    try {
      // Setup listeners
      _player.onPlayerStateChanged.listen((state) {
        if (mounted) setState(() => _playerState = state);
      });

      _player.onDurationChanged.listen((duration) {
        if (mounted) setState(() => _duration = duration);
      });

      _player.onPositionChanged.listen((position) {
        if (mounted) setState(() => _position = position);
      });

      // Set the source
      await _player.setSource(UrlSource(widget.url));
      if (mounted) setState(() => _isInitialized = true);
    } catch (e) {
      debugPrint("Audio Player Setup Error: $e");
    }
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final accentColor = isDark ? Colors.orange : Colors.orange.shade800;

    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDark ? Colors.black26 : Colors.black.withOpacity(0.03),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  _playerState == PlayerState.playing 
                      ? Icons.pause_circle_filled 
                      : Icons.play_circle_filled,
                  size: 40,
                  color: _isInitialized ? accentColor : Colors.grey,
                ),
                onPressed: _isInitialized ? () async {
                  if (_playerState == PlayerState.playing) {
                    await _player.pause();
                  } else {
                    await _player.play(UrlSource(widget.url));
                  }
                } : null,
              ),
              Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 4,
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                    overlayShape: const RoundSliderOverlayShape(overlayRadius: 14),
                    activeTrackColor: accentColor,
                    inactiveTrackColor: accentColor.withOpacity(0.2),
                    thumbColor: accentColor,
                  ),
                  child: Slider(
                    value: _position.inSeconds.toDouble(),
                    max: _duration.inSeconds > 0 ? _duration.inSeconds.toDouble() : 1.0,
                    onChanged: _isInitialized ? (value) {
                      _player.seek(Duration(seconds: value.toInt()));
                    } : null,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatDuration(_position),
                  style: TextStyle(fontSize: 11, color: isDark ? Colors.white60 : Colors.black54),
                ),
                Text(
                  _formatDuration(_duration),
                  style: TextStyle(fontSize: 11, color: isDark ? Colors.white60 : Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}
