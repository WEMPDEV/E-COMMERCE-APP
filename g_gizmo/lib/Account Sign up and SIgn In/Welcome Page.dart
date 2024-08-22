import 'package:flutter/material.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF25364A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text('Welcome',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              const SizedBox(
                height: 20,
              ),
              const Image(image:
              AssetImage('assets/images/onboard/welcome.jpg'),
                // height: 200, width: 300,
              ),
              const SizedBox(
                height: 47,
              ),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Handle Facebook Sign-In
                  },
                  icon: Image.asset(
                    'assets/icons/goggleicon.jpg',
                    width: 24,
                    height: 20,
                  ),
                  label: const Text('Sign Up With Google',
                    style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 17,
                    ),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 9, horizontal: 100),
                    // onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Handle Facebook Sign-In
                  },
                  icon: Image.asset(
                    'assets/icons/facebook.jpg',
                    width: 25,
                    height: 24,
                  ),
                  label: const Text('Sign Up With Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.blueAccent,
                      fontSize: 15,
                    ),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(
                        vertical: 9, horizontal: 100),
                    // onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.blueAccent,),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Handle Facebook Sign-In
                  },
                  icon: Image.asset(
                    'assets/icons/apple.jpg',
                    width: 24,
                    height: 20,
                  ),
                  label: const Text('Sign Up With Apple',
                    style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.white,
                      fontSize: 18,
                    ),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 100),
                    // onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  icon: const Icon(Icons.mail,color: Colors.black45,),
                  label: const Text('Sign Up With Email',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.green,
                      fontSize: 18,
                    ),),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        vertical: 8, horizontal: 100),
                    // onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child:TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  label: const Text('Already have an Account? Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),),
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF25364A),
                    padding: const EdgeInsets.symmetric(
                        vertical: 5, horizontal: 50),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
