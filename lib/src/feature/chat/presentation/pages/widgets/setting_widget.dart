import 'package:flutter/material.dart';

class SettingsCard extends StatefulWidget {
  const SettingsCard({Key? key}) : super(key: key);

  @override
  State<SettingsCard> createState() => _SettingsCardState();
}

class _SettingsCardState extends State<SettingsCard> {
  bool webMode = true;
  bool report = true;
  bool deepAnalysis = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF0D1B4C), // Dark navy blue
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            _buildSwitchTile(
              icon: Icons.public,
              title: "Web Mode",
              value: webMode,
              onChanged: (val) => setState(() => webMode = val),
            ),
            Divider(color: Colors.white.withOpacity(0.2), height: 1),
            _buildSwitchTile(
              icon: Icons.assignment,
              title: "Report",
              value: report,
              onChanged: (val) => setState(() => report = val),
            ),
            Divider(color: Colors.white.withOpacity(0.2), height: 1),
            _buildSwitchTile(
              icon: Icons.analytics,
              title: "Deep Analysis",
              value: deepAnalysis,
              onChanged: (val) => setState(() => deepAnalysis = val),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile({
    required IconData icon,
    required String title,
    required bool value,
    required Function(bool) onChanged,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.lightBlueAccent,
        activeTrackColor: Colors.black,
        inactiveThumbColor: Colors.grey,
        inactiveTrackColor: Colors.white24,
      ),
    );
  }

}
