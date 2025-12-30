import 'package:flutter/material.dart';

// --- DESIGN CONSTANTS ---
const _brandPurple = Color(0xFF6C28FE);
const _bgLilac = Color(0xFFF6F1FA);
const _fieldGrey = Color(0xFFF5F5F5);
const _cardRadius = 28.0;
const _elementRadius = 12.0;

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgLilac,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildMainCard(context),
              const SizedBox(height: 24),
              _buildFooterTerms(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainCard(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(_cardRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Branding Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/appLogo.png', height: 60),
                const SizedBox(width: 12),
                const Text(
                  "EventChain",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: _brandPurple,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              "Welcome back! Sign in to continue",
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            const SizedBox(height: 32),

            // Social Login
            _socialButton(
              icon: 'assets/images/googleLogo.png',
              label: "Continue with Google",
              onPressed: () => print("Google Clicked"),
            ),

            const SizedBox(height: 24),
            const _OrDivider(), // This now shows the actual lines
            const SizedBox(height: 24),

            // Email & Password
            _inputField(
              label: "Email",
              hint: "you@example.com",
              icon: Icons.email_outlined,
            ),
            const SizedBox(height: 20),
            _inputField(
              label: "Password",
              hint: "••••••••",
              icon: Icons.lock_outline,
              isPassword: true,
              trailing: TextButton(
                onPressed: () {},
                child: const Text("Forgot?",
                    style: TextStyle(color: _brandPurple, fontWeight: FontWeight.w600)),
              ),
            ),

            const SizedBox(height: 32),

            // Main Action
            _primaryButton(
              text: "Sign In",
              onPressed: () => print("Sign in attempted"),
            ),

            const SizedBox(height: 24),

            // Interactive Sign Up Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? ",
                    style: TextStyle(color: Colors.black54, fontSize: 14)),
                InkWell(
                  onTap: () => print("Navigating to Sign Up..."),
                  borderRadius: BorderRadius.circular(4),
                  hoverColor: _brandPurple.withOpacity(0.08),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: _brandPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // --- REUSABLE BUILDERS ---

  Widget _inputField({
    required String label,
    required String hint,
    required IconData icon,
    bool isPassword = false,
    Widget? trailing,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
            if (trailing != null) trailing,
          ],
        ),
        const SizedBox(height: 8),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(icon, color: Colors.black38, size: 20),
            filled: true,
            fillColor: _fieldGrey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_elementRadius),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ],
    );
  }

  Widget _primaryButton({required String text, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: _brandPurple,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_elementRadius)),
          elevation: 0,
        ),
        child: Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _socialButton({required String icon, required String label, required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(_elementRadius),
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_elementRadius),
          border: Border.all(color: Colors.black12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, height: 20),
            const SizedBox(width: 12),
            Text(label, style: const TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  Widget _buildFooterTerms() {
    return const SizedBox(
      width: 300,
      child: Text(
        "By continuing, you agree to EventChain's Terms of Service and Privacy Policy",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 12, color: Colors.black38, height: 1.5),
      ),
    );
  }
}

// Fixed the Divider logic here!
class _OrDivider extends StatelessWidget {
  const _OrDivider();

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: Colors.black12)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text("or", style: TextStyle(color: Colors.black38)),
        ),
        Expanded(child: Divider(color: Colors.black12)),
      ],
    );
  }
}