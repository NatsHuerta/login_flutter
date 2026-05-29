import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ================= APP PRINCIPAL =================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Catálogo',
      home: const LoginScreen(),
    );
  }
}

// ================= LOGIN =================

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController txtCorreoController =
      TextEditingController();

  final TextEditingController txtPasswordController =
      TextEditingController();

  @override
  void dispose() {
    txtCorreoController.dispose();
    txtPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0F172A),
              Color(0xFF1E3A5F),
              Color(0xFF334155),
            ],
          ),
        ),

        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  // ================= LOGO =================

                  Container(
                    key: const Key("imgLogo"),

                    width: 240,
                    height: 240,

                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(30),

                      border: Border.all(
                        color: Colors.white12,
                        width: 1.5,
                      ),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 18,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(15),

                      child: Image.asset(
                        'imagenes/image.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // ================= TEXTO BIENVENIDA =================

                  const Text(
                    "Bienvenido de nuevo",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Ingresa tus datos para continuar",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),

                  const SizedBox(height: 35),

                  // ================= CARD LOGIN =================

                  Container(
                    padding: const EdgeInsets.all(25),

                    decoration: BoxDecoration(
                      color: const Color(0xFF1E293B).withOpacity(0.88),

                      borderRadius: BorderRadius.circular(28),

                      border: Border.all(
                        color: Colors.white10,
                        width: 1,
                      ),

                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        // ================= CORREO =================

                        TextField(
                          key: const Key("txtCorreo"),

                          controller: txtCorreoController,

                          keyboardType: TextInputType.emailAddress,

                          style: const TextStyle(
                            color: Colors.white,
                          ),

                          decoration: InputDecoration(
                            hintText:
                                "Ingresa tu correo electrónico",

                            hintStyle: const TextStyle(
                              color: Color(0xFF94A3B8),
                            ),

                            filled: true,

                            fillColor: const Color(0xFF334155),

                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Color(0xFFCBD5E1),
                            ),

                            contentPadding:
                                const EdgeInsets.symmetric(
                              vertical: 18,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(18),

                              borderSide: BorderSide.none,
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(18),

                              borderSide: const BorderSide(
                                color: Color(0xFF2563EB),
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= PASSWORD =================

                        TextField(
                          key: const Key("txtPassword"),

                          controller: txtPasswordController,

                          obscureText: true,

                          style: const TextStyle(
                            color: Colors.white,
                          ),

                          decoration: InputDecoration(
                            hintText: "Contraseña",

                            hintStyle: const TextStyle(
                              color: Color(0xFF94A3B8),
                            ),

                            filled: true,

                            fillColor: const Color(0xFF334155),

                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Color(0xFFCBD5E1),
                            ),

                            contentPadding:
                                const EdgeInsets.symmetric(
                              vertical: 18,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(18),

                              borderSide: BorderSide.none,
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(18),

                              borderSide: const BorderSide(
                                color: Color(0xFF2563EB),
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 35),

                        // ================= BOTÓN =================

                        SizedBox(
                          width: double.infinity,
                          height: 58,

                          child: ElevatedButton(
                            key: const Key("btnIngresar"),

                            onPressed: () {
                              String correo =
                                  txtCorreoController.text;

                              String password =
                                  txtPasswordController.text;

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "Correo: $correo\nContraseña: $password",
                                  ),
                                ),
                              );
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFF2563EB),

                              foregroundColor: Colors.white,

                              elevation: 8,

                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(18),
                              ),
                            ),

                            child: const Text(
                              "INGRESAR",

                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 35),

                  // ================= TERMINOS =================

                  const Text(
                    "Términos y condiciones",
                    key: Key("txtTerminos"),

                    style: TextStyle(
                      color: Color(0xFFCBD5E1),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}