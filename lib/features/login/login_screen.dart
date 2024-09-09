import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:vetcomm/features/login/goole_sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GoogleSignInAccount? signIn;

  @override
  void initState() {
    super.initState();
    // Check if the user is already signed in when the screen opens
    signIn = GoogleSignInApi.currentUser;

    // If the user is already signed in, update the UI
    if (signIn != null) {
      setState(() {}); // Trigger a UI rebuild to show logged-in state
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (signIn != null) ...[
                CircleAvatar(
                  backgroundImage: NetworkImage(signIn?.photoUrl ?? ""),
                  radius: 50,
                ),
                const SizedBox(height: 20),
                Text(
                  signIn?.displayName ?? "",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  signIn?.email ?? "",
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: googleSignout,
                  icon: const Icon(Icons.logout),
                  label: const Text('Sign Out'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade300,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ] else ...[
                const Text(
                  'Please log in',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: googleSignIn,
                  icon: const Icon(Icons.login),
                  label: const Text('Sign In with Google'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Future<void> googleSignIn() async {
    signIn = await GoogleSignInApi.login();
    setState(() {});
  }

  void googleSignout() {
    GoogleSignInApi.logout();
    setState(() {
      signIn = null;
    });
  }
}
