import 'package:flutter/material.dart';
import '../model/get_user_model.dart';
import '../api/auth_service.dart';
import 'edit_profile_screen.dart';
import 'login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late Future<GetUserModel> futureProfile;

  @override
  void initState() {
    super.initState();
    futureProfile = AuthService.getProfile();
  }

  void refreshProfile() {
    setState(() {
      futureProfile = AuthService.getProfile();
    });
  }

  Future<void> logout() async {
    await AuthService.logout();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (_) => const LoginScreen()),
      (route) => false,
    );
  }

  Widget buildInfoCard(String title, String value) {
    return Card(
      child: ListTile(title: Text(title), subtitle: Text(value)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile User'),
        actions: [
          IconButton(onPressed: logout, icon: const Icon(Icons.logout)),
        ],
      ),
      body: FutureBuilder<GetUserModel>(
        future: futureProfile,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final user = snapshot.data?.data;

          if (user == null) {
            return const Center(child: Text('Data user tidak ditemukan'));
          }

          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                buildInfoCard('ID', '${user.id}'),
                buildInfoCard('Nama', user.name ?? '-'),
                buildInfoCard('Email', user.email ?? '-'),
                buildInfoCard('Created At', user.createdAt ?? '-'),
                buildInfoCard('Updated At', user.updatedAt ?? '-'),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => EditProfileScreen(user: user),
                      ),
                    );
                    refreshProfile();
                  },
                  child: const Text('Edit Profile'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
