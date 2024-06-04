import 'package:flutter/material.dart';
import 'package:sos_app/widgets/personal_info_tile.dart';
import 'package:sos_app/widgets/sos_button.dart';
import 'package:sos_app/widgets/sos_containers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 242, 242, 242),
        title: const Text("Strona główna"),
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PersonalInfoTile(),
            SosButton(),
            SosContainer(),
          ],
        ),
      ),
    );
  }
}
