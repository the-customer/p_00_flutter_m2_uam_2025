import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min, // wrap content
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
            ),
            const SizedBox(height: 16),
            const Text(
              "Fatoumata Drame",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Developpeuse Flutter et Formatrice passionnee.\nSpecialisee dans le developpement d'applications mobiles et le design d'interface utilisateur.",textAlign: TextAlign.center,
              ),
              const Divider(height: 32, thickness: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text("text1"),
                  // Expanded(child: SizedBox()),
                  Text("text2"),
                ],
              )
          ],
        )
      ),
    );
  }
}