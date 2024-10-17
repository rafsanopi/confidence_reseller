import 'package:confidence_reseller/presentation/widgets/nav_bar/nav_bar.dart';
import 'package:flutter/material.dart';

class NewProductScreen extends StatelessWidget {
  const NewProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavBarScreen(currentIndex: 1),
    );
  }
}
