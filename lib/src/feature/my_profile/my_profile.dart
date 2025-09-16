import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool updatesEnabled = true;
  bool alertsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        150,
        154,
        161,
      ), // Dark theme background
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              const SizedBox(height: 20),

              // Profile Section
              Center(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://via.placeholder.com/150", // Replace with real image
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Burak Deniz",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Burakdeniz@gmail.com",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // My Profile Section
              const Text(
                "My Profile",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),

              _buildProfileItem(
                icon: Icons.person_outline,
                title: "Personal Information",
                onTap: () {},
              ),
              _buildProfileItem(
                icon: Icons.card_membership_outlined,
                title: "Membership",
                onTap: () {},
              ),
              _buildProfileItem(
                icon: Icons.payment,
                title: "Payment Method",
                onTap: () {},
              ),
              _buildProfileItem(
                icon: Icons.support_agent,
                title: "Contact Support",
                onTap: () {},
                isLast: true,
              ),

              const SizedBox(height: 30),

              // Settings Section
              const Text(
                "Settings",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),

              // Updates Toggle
              _buildSwitchItem(
                title: "Updates",
                icon: Icons.update,
                value: updatesEnabled,
                onChanged: (val) {
                  setState(() {
                    updatesEnabled = val;
                  });
                },
              ),

              // Alerts Toggle
              _buildSwitchItem(
                title: "Alerts",
                icon: Icons.notifications_none,
                value: alertsEnabled,
                onChanged: (val) {
                  setState(() {
                    alertsEnabled = val;
                  });
                },
              ),

              _buildProfileItem(
                icon: Icons.memory,
                title: "Memory",
                onTap: () {},
              ),
              _buildProfileItem(
                icon: Icons.chat,
                title: "Chat Model",
                onTap: () {},
                isLast: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Reusable Widget: Profile List Item
  Widget _buildProfileItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isLast = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: isLast ? Colors.transparent : Colors.grey.withOpacity(0.2),
          ),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 16,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
      ),
    );
  }

  /// Reusable Widget: Switch List Item
  Widget _buildSwitchItem({
    required String title,
    required IconData icon,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.2))),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        trailing: Switch(
          value: value,
          onChanged: onChanged,
          activeColor: Colors.blue,
        ),
      ),
    );
  }
}
