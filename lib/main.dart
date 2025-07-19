import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smartshop/providers/theme_provider.dart';
import 'package:smartshop/routes.dart';
import 'features/auth/screens/splash_screen.dart';
import 'features/auth/viewmodels/auth_viewmodel.dart';
import 'features/cart/viewmodels/cart_viewmodel.dart';
import 'features/products/viewmodels/product_viewmodel.dart';

void main() {
  // It's important to ensure bindings are initialized for SharedPreferences
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MultiProvider is used to provide multiple objects down the widget tree.
    return MultiProvider(
      providers: [
        // Provider for managing theme state (light/dark mode)
        ChangeNotifierProvider(create: (_) => ThemeProvider()..initialize()),

        // Provider for authentication-related logic
        ChangeNotifierProvider(create: (_) => AuthViewModel()),

        // Provider for product data, favorites, and sorting
        ChangeNotifierProvider(create: (_) => ProductViewModel()),

        // Provider for managing the shopping cart
        ChangeNotifierProvider(create: (_) => CartViewModel()),
      ],
      // Consumer listens to ThemeProvider changes to rebuild the MaterialApp
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Smart Shop',
            theme: themeProvider.currentTheme,
            debugShowCheckedModeBanner: false,
            // The initial screen of the app
            home: const SplashScreen(),
            // Defines the named routes for navigation
            routes: AppRoutes.getRoutes(),
          );
        },
      ),
    );
  }
}