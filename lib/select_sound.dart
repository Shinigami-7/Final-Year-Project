import 'package:flutter/material.dart';
import "setting.dart";
class SoundSetting extends StatefulWidget {
  const SoundSetting({Key? key}) : super(key: key);

  @override
  _SoundSettingState createState() => _SoundSettingState();
}

class _SoundSettingState extends State<SoundSetting> {
  double _volume = 50.0;
  String _selectedSound = 'Alarm 1';
  bool _isSilent = false;
  bool _isVibrate = false;

  List<String> sounds = ['Alarm 1', 'Alarm 2', 'Alarm 3', 'Alarm 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Setting()),
            );
          },
        ),
        title: const Text('Sound Settings', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select Sound:', style: TextStyle(color: Colors.white, fontSize: 18)),
            DropdownButton<String>(
              value: _selectedSound,
              items: sounds.map((String sound) {
                return DropdownMenuItem<String>(
                  value: sound,
                  child: Text(sound),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedSound = newValue!;
                });
              },
            ),
            const SizedBox(height: 20),
            const Text('Volume:', style: TextStyle(color: Colors.white, fontSize: 18)),
            Slider(
              value: _volume,
              min: 0,
              max: 100,
              divisions: 10,
              label: _volume.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _volume = value;
                });
              },
            ),
            const SizedBox(height: 20),
            SwitchListTile(
              title: const Text('Silent Mode', style: TextStyle(color: Colors.white, fontSize: 18)),
              value: _isSilent,
              onChanged: (bool value) {
                setState(() {
                  _isSilent = value;
                  if (value) _isVibrate = false;
                });
              },
            ),
            SwitchListTile(
              title: const Text('Vibrate Mode', style: TextStyle(color: Colors.white, fontSize: 18)),
              value: _isVibrate,
              onChanged: (bool value) {
                setState(() {
                  _isVibrate = value;
                  if (value) _isSilent = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
