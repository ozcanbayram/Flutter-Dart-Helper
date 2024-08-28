import 'package:flutter/material.dart';

class CustomLoginView extends StatefulWidget {
  const CustomLoginView({super.key});

  @override
  State<CustomLoginView> createState() => _CustomLoginViewState();
}

class _CustomLoginViewState extends State<CustomLoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 237, 237),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 237, 237),
        // title: const Center(child: Text('Custom Register Screen')),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Icon(
                Icons.lock_open_sharp,
                size: 120,
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 32.0, left: 32),
                child: Column(
                  children: [
                    CustomTextField(
                      controller: emailController,
                      obsourceText: false,
                      fieldTitle: 'E-mail',
                      fieldIcon: const Icon(Icons.mail),
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      controller: passwordController,
                      obsourceText: !_passwordVisible,
                      fieldTitle: 'Password',
                      fieldIcon: const Icon(Icons.key),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _passwordVisible ? Colors.red : Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              // Gradient arka planlı buton
              Container(
                width: double
                    .infinity, // Butonun genişliğini arttırmak için eklendi
                margin: const EdgeInsets.symmetric(
                    horizontal: 30), // Yandan boşluk ekleyebiliriz
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.red, Color.fromARGB(255, 252, 132, 132)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20), // Radius azaltıldı
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15.0,
                      horizontal: 40.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Radius azaltıldı
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
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

class CustomTextField extends StatelessWidget {
  final String fieldTitle;
  final Icon fieldIcon;
  final bool obsourceText;
  final TextEditingController controller;
  final Widget? suffixIcon;
  const CustomTextField({
    super.key,
    required this.fieldTitle,
    required this.fieldIcon,
    required this.obsourceText,
    required this.controller,
    this.suffixIcon, //zorunlu degil.
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorWidth: 5,
      obscureText: obsourceText,
      cursorColor: const Color.fromARGB(255, 252, 132, 132),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        hintText: fieldTitle,
        hintStyle: const TextStyle(fontSize: 20),
        prefixIcon: fieldIcon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 252, 132, 132), width: 2),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
